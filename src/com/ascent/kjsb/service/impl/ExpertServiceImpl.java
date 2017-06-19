package com.ascent.kjsb.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ascent.kjsb.dao.ExpertDao;
import com.ascent.kjsb.entity.Expert;
import com.ascent.kjsb.service.ExpertService;

/**
 * 专家的业务层的实现类
 * @author DELL001
 *
 */
@Transactional
public class ExpertServiceImpl implements ExpertService {

	private ExpertDao expertDao;//注入专家Dao

	public void setExpertDao(ExpertDao expertDao) {
		this.expertDao = expertDao;
	}


	//查询全部专家
	@Override
	public List<Expert> findAllExpert() {
		return expertDao.findAll();
	}


	@Override
	public Expert findExpertById(Integer expertid) {
		return expertDao.findExpertById(expertid);
	}


	@Override
	public void delete(Expert expert) {
		expertDao.delete(expert);
	}


	@Override
	public void save(Expert expert) {
		expertDao.save(expert);
	}

	//更新操作
	@Override
	public void update(Expert expert) {
		expertDao.update(expert);
	}


	@Override
	public void updatePwd(Expert expert) {
		expertDao.updatePwd(expert);
	}

}
