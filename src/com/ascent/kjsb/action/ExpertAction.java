package com.ascent.kjsb.action;

import com.ascent.kjsb.entity.Expert;
import com.ascent.kjsb.service.ExpertService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 专家的action控制类
 * 
 * @author DELL001
 *
 */
public class ExpertAction extends ActionSupport implements ModelDriven<Expert> {

	private static final long serialVersionUID = 1L;
	private Expert expert = new Expert();

	/*
	 * 模型驱动 (non-Javadoc)
	 * 
	 * @see com.opensymphony.xwork2.ModelDriven#getModel()
	 */
	@Override
	public Expert getModel() {
		return expert;
	}

	private ExpertService expertService;// 注入业务层专家
	private String newpassword;// 修改密码时输入的新密码
	private String newdoublepassword;// 修改密码时输入的重复新密码

	public void setExpertService(ExpertService expertService) {
		this.expertService = expertService;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String getNewdoublepassword() {
		return newdoublepassword;
	}

	public void setNewdoublepassword(String newdoublepassword) {
		this.newdoublepassword = newdoublepassword;
	}

	// 跳转到expert页面
	public String expert() {
		Integer expertid = (Integer) ActionContext.getContext().getSession().get("expertid");
		expert = expertService.findExpertById(expertid);
		return "expert";
	}

	// 加载显示专家信息的方法
	public String expertinfo() {
		Integer expertid = (Integer) ActionContext.getContext().getSession().get("expertid");
		expert = expertService.findExpertById(expertid);
		return "expertInfo";
	}

	// 修改专家信息的方法
	public String update() {
		expertService.update(expert);
		return "updateSuccess";
	}

	// 跳转至修改专家密码的方法
	public String updatepwd() {
		Integer expertid = (Integer) ActionContext.getContext().getSession().get("expertid");
		expert = expertService.findExpertById(expertid);
		return "updatePwd";
	}

	// 重置专家密码
	public String reworkpwd() throws Exception{
		if (newpassword == null || newdoublepassword == null) {
			addActionMessage("请输入密码!");
			return "updatePwdField";
		} else {
			if (newpassword.equals(newdoublepassword)) {
				expert.setEpassword(newpassword);
				expertService.updatePwd(expert);
				return "reworkPwdSuccess";
			} else {
				addActionMessage("两次密码不一致，请重新输入！");
				return "updatePwdField";
			}
		}
	}

}
