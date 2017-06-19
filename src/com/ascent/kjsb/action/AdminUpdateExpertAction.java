package com.ascent.kjsb.action;

import java.util.List;

import com.ascent.kjsb.entity.Expert;
import com.ascent.kjsb.service.ExpertService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminUpdateExpertAction extends ActionSupport implements
		ModelDriven<Expert> {

	private static final long serialVersionUID = 1L;

	private Expert expert = new Expert();

	@Override
	public Expert getModel() {
		return expert;
	}

	private ExpertService expertService;// 注入ExpertService

	public void setExpertService(ExpertService expertService) {
		this.expertService = expertService;
	}

	// 显示专家信息的方法
	public String showExpert() {
		List<Expert> expertList = expertService.findAllExpert();
		ActionContext.getContext().getSession().put("expertList", expertList);
		return "showExpert";
	}

	// 跳转至修改专家信息的方法
	public String updateExpert() {
		ActionContext.getContext().getSession().put("expert", expertService.findExpertById(expert.getExpertid()));
		return "updateExpert";
	}

	// 删除专家的执行方法
	public String deleteExpert() {
		expertService.delete(expertService.findExpertById(expert.getExpertid()));
		return "deleteExpertSuccess";
	}

	// 修改专家
	public String update() throws Exception {
		expertService.update(expert);
		return "updateSuccess";
	}

}
