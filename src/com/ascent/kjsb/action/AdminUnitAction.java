package com.ascent.kjsb.action;

import java.util.List;

import com.ascent.kjsb.entity.Unit;
import com.ascent.kjsb.service.UnitService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminUnitAction extends ActionSupport implements ModelDriven<Unit>{
	private static final long serialVersionUID = 1L;
	Unit unit = new Unit();
	
	@Override
	public Unit getModel() {
		return unit;
	}
	
	private UnitService unitService;//注入UnitService
	
	public void setUnitService(UnitService unitService) {
		this.unitService = unitService;
	}
	
	
	
	// 显示单位信息的方法
	public String showUnit() {
		List<Unit> unitList = unitService.findAllUnit();
		ActionContext.getContext().getSession().put("unitList", unitList);
		return "showUnit";
	}






	
}
