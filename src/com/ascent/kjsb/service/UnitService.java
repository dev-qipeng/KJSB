package com.ascent.kjsb.service;

import java.util.List;

import com.ascent.kjsb.entity.Unit;

/**
 * 单位的业务层的接口
 * @author DELL001
 *
 */
public interface UnitService {

	List<Unit> findAllUnit();

	Unit findUnitById(Integer unitid);

	void delete(Unit unit);

	void save(Unit unit);

}
