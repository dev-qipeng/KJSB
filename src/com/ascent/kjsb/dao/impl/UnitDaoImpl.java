package com.ascent.kjsb.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.ascent.kjsb.dao.UnitDao;
import com.ascent.kjsb.entity.Unit;

/**
 * 单位的Dao层的实现类
 * 
 * @author DELL001
 *
 */
public class UnitDaoImpl extends HibernateTemplate implements UnitDao {

	@Override
	public List<Unit> findAll() {
		String hql = "from Unit";
		@SuppressWarnings("unchecked")
		List<Unit> list = (List<Unit>) super.find(hql);
		return list;
	}

	@Override
	public Unit findUnitById(Integer unitid) {
		return super.get(Unit.class, unitid);
	}

	@Override
	public void delete(Unit unit) {
		super.delete(unit);
	}

	@Override
	public void save(Unit unit) {
		super.save(unit);
	}

}
