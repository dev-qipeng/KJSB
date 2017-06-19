package com.ascent.kjsb.dao;

import java.util.List;

import com.ascent.kjsb.entity.Admin;

/**
 * Dao层Admin类的接口
 * @author DELL001
 *
 */
public interface AdminDao {

	List<Admin> findAll();

}
