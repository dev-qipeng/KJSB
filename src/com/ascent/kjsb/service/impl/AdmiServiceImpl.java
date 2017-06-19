package com.ascent.kjsb.service.impl;

import java.util.List;

import com.ascent.kjsb.dao.AdminDao;
import com.ascent.kjsb.entity.Admin;
import com.ascent.kjsb.service.AdminService;

/**
 * Service层Admin的实现类
 * 
 * @author DELL001
 *
 */
public class AdmiServiceImpl implements AdminService {

	private AdminDao adminDao;// 注入Dao层的Admin

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	
	//查找管理员的方法
	@Override
	public List<Admin> findAllAdmin() {
		
		return adminDao.findAll();
	}

}
