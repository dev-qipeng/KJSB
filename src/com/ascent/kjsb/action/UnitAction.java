package com.ascent.kjsb.action;

import com.ascent.kjsb.entity.Unit;
import com.ascent.kjsb.service.UnitService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 单位的Action控制类
 * 
 * @author DELL001
 *
 */
public class UnitAction extends ActionSupport implements ModelDriven<Unit> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Unit unit = new Unit();
	
	/*
	 * (non-Javadoc)
	 * 模型驱动
	 * @see com.opensymphony.xwork2.ModelDriven#getModel()
	 */
	@Override
	public Unit getModel() {
		return unit;
	}

	private UnitService unitService;// 注入业务层的单位

	public void setUnitService(UnitService unitService) {
		this.unitService = unitService;
	}
	
	public String unitinfo(){
		Integer unitid = (Integer) ActionContext.getContext().getSession().get("unitid");
		unit = unitService.findUnitById(unitid);
		return "unitinfo";
	}

}
