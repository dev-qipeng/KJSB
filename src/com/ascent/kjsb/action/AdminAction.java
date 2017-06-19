package com.ascent.kjsb.action;

import java.util.List;

import com.ascent.kjsb.entity.Admin;
import com.ascent.kjsb.entity.Expert;
import com.ascent.kjsb.entity.Unit;
import com.ascent.kjsb.service.AdminService;
import com.ascent.kjsb.service.ExpertService;
import com.ascent.kjsb.service.UnitService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * Action管理员类
 * 
 * @author DELL001
 * 
 */
public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

	private static final long serialVersionUID = 1L;
	Admin admin = new Admin();

	/**
	 * Admin的模型驱动
	 */
	@Override
	public Admin getModel() {
		return admin;
	}

	@SuppressWarnings("all")
	private AdminService adminService;// 注入Service层的对象
	private ExpertService expertService;// 注入专家Service
	private UnitService unitService;// 注入单位的Service

	private Integer expertid;// 专家id属性
	private Integer unitid;// 单位id属性
	private String username;// 添加时的账号
	private String password;// 添加时的密码
	private Integer select;// 用户保存添加用户时选的权限组

	public Integer getExpertid() {
		return expertid;
	}

	public void setExpertid(Integer expertid) {
		this.expertid = expertid;
	}

	public Integer getUnitid() {
		return unitid;
	}

	public void setUnitid(Integer unitid) {
		this.unitid = unitid;
	}

	public void setExpertService(ExpertService expertService) {
		this.expertService = expertService;
	}

	public void setUnitService(UnitService unitService) {
		this.unitService = unitService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public Integer getSelect() {
		return select;
	}

	public void setSelect(Integer select) {
		this.select = select;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// 显示用户的执行方法
	public String user() {
		List<Expert> expertList = expertService.findAllExpert();
		List<Unit> unitList = unitService.findAllUnit();
		ActionContext.getContext().getSession().put("expertList", expertList);
		ActionContext.getContext().getSession().put("unitList", unitList);

		return "success";
	}

	// 删除专家的执行方法
	public String deleteExpert() {
		Expert expert = expertService.findExpertById(expertid);
		expertService.delete(expert);
		return "deleteExpertSuccess";
	}

	// 删除单位的执行方法
	public String deleteUnit() {
		Unit unit = unitService.findUnitById(unitid);
		unitService.delete(unit);
		return "deleteUnitSuccess";
	}

	// 跳转到添加用户的执行方法
	public String addUser() {
		return "addUser";
	}

	// 添加用户的执行方法
	public String save() {
		if (select == 0) {
			Expert expert = new Expert();
			expert.setEusername(username);
			expert.setEpassword(password);
			expertService.save(expert);
			return "saveSuccess";
		} else if (select == 1) {
			Unit unit = new Unit();
			unit.setUusername(username);
			unit.setUpassword(password);
			unitService.save(unit);
			return "saveSuccess";
		} else {
			return "saveError";
		}
	}

	// 跳转至修改单位信息的方法
	public String updateUnit() {
		Unit unit = unitService.findUnitById(unitid);
		ActionContext.getContext().getSession().put("unit", unit);
		return "updateUnit";
	}
}
