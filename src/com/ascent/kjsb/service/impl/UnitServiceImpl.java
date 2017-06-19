package com.ascent.kjsb.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ascent.kjsb.dao.UnitDao;
import com.ascent.kjsb.entity.Unit;
import com.ascent.kjsb.service.UnitService;

/**
 * 单位的业务层的实现类
 * @author DELL001
 *
 */
@Transactional
public class UnitServiceImpl implements UnitService {

	private UnitDao unitDao;//注入Dao层的单位

	public void setUnitDao(UnitDao unitDao) {
		this.unitDao = unitDao;
	}

	@Override
	public List<Unit> findAllUnit() {
		return unitDao.findAll();
	}

	@Override
	public Unit findUnitById(Integer unitid) {
		return unitDao.findUnitById(unitid);
	}

	@Override
	public void delete(Unit unit) {
		unitDao.delete(unit);
	}

	@Override
	public void save(Unit unit) {
		unitDao.save(unit);
	}
}
