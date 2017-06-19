package com.ascent.kjsb.service;

import java.util.List;

import com.ascent.kjsb.entity.Expert;

/**
 * 专家的业务层的接口
 * @author DELL001
 *
 */
public interface ExpertService {


	List<Expert> findAllExpert();

	Expert findExpertById(Integer expertid);

	void delete(Expert expert);

	void save(Expert expert);

	void update(Expert expert);

	void updatePwd(Expert expert);


}
