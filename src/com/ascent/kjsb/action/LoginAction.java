package com.ascent.kjsb.action;

import java.util.List;

import com.ascent.kjsb.entity.Admin;
import com.ascent.kjsb.entity.Expert;
import com.ascent.kjsb.entity.Login;
import com.ascent.kjsb.entity.Unit;
import com.ascent.kjsb.service.AdminService;
import com.ascent.kjsb.service.ExpertService;
import com.ascent.kjsb.service.UnitService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 用户登陆控制器
 * 
 * @author DELL001
 * 
 */
public class LoginAction extends ActionSupport implements ModelDriven<Login> {

	private static final long serialVersionUID = 1L;
	Login login = new Login();

	/*
	 * Login的模型驱动
	 */
	@Override
	public Login getModel() {
		return login;
	}

	private AdminService adminService;// 注入管理员Service
	private ExpertService expertService;// 注入专家Service
	private UnitService unitService;// 注入单位的Service

	public void setUnitService(UnitService unitService) {
		this.unitService = unitService;
	}

	public void setExpertService(ExpertService expertService) {
		this.expertService = expertService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	// 登陆的执行方法：
	public String login() {
		List<Admin> adminList = adminService.findAllAdmin();
		List<Expert> expertList = expertService.findAllExpert();
		List<Unit> unitList = unitService.findAllUnit();
		boolean p = false;
		// 遍历adminList
		for (Admin a : adminList) {
			if (a.getAusername().equals(login.getUsername())) {
				if (a.getApassword().equals(login.getPassword())) {
					ActionContext.getContext().getValueStack().push(a);
					p = true;
					return "adminLogin";
				}
			}
		}
		// 遍历expertList
		if (!p) {
			for (Expert e : expertList) {
				if (e.getEusername().equals(login.getUsername())) {
					if (e.getEpassword().equals(login.getPassword())) {
						ActionContext.getContext().getSession()
								.put("loginName", e.getName());
						ActionContext.getContext().getSession()
								.put("expertid", e.getExpertid());
						p = true;
						return "expertLogin";
					}
				}
			}
		}

		// 遍历unitList
		if (!p) {
			for (Unit u : unitList) {
				if (u.getUusername().equals(login.getUsername())) {
					if (u.getUpassword().equals(login.getPassword())) {
						ActionContext.getContext().getSession()
								.put("LoginName", u.getUnitname());
						ActionContext.getContext().getSession()
								.put("unitid", u.getUnitid());
						p = true;
						return "unitLogin";
					}
				}
			}
		}
		if (!p) {
			// 如果上面没找到对应的账号密码，给出提示
			addActionMessage("账号或密码错误！请重新输入");
			return "loginError";
		}

		return "loginError";
	}

}
