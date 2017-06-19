package com.ascent.kjsb.service;

import java.util.List;

import com.ascent.kjsb.entity.Admin;
import com.ascent.kjsb.entity.Expert;

/**
 * Service层Admin的接口
 * @author DELL001
 *
 */
public interface AdminService {

	List<Admin> findAllAdmin();


}
