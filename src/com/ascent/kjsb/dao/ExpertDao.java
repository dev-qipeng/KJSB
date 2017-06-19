package com.ascent.kjsb.dao;

import java.util.List;

import com.ascent.kjsb.entity.Expert;

/**
 * 专家的Dao层的接口
 * @author DELL001
 *
 */
public interface ExpertDao {

	List<Expert> findAll();

	Expert findExpertById(Integer expertid);

	void delete(Expert expert);

	void save(Expert expert);

	void update(Expert expert);

	void updatePwd(Expert expert);

}
