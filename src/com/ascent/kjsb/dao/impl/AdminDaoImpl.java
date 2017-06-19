package com.ascent.kjsb.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.ascent.kjsb.entity.Admin;

/**
 * Dao层Admin接口实现类
 * 
 * @author DELL001
 *
 */
public class AdminDaoImpl extends HibernateTemplate implements com.ascent.kjsb.dao.AdminDao {

	@Override
	public List<Admin> findAll() {
		String hql = "from Admin";
		@SuppressWarnings("unchecked")
		List<Admin> list = (List<Admin>) super.find(hql);
		return list;
	}


}
