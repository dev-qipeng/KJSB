package com.ascent.kjsb.dao;

import java.util.List;

import com.ascent.kjsb.entity.Unit;

/**
 * 单位的Dao层的接口
 * @author DELL001
 *
 */
public interface UnitDao {

	List<Unit> findAll();

	Unit findUnitById(Integer unitid);

	void delete(Unit unit);

	void save(Unit unit);

}
