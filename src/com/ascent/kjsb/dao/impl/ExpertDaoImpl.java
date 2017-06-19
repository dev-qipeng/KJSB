package com.ascent.kjsb.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.ascent.kjsb.dao.ExpertDao;
import com.ascent.kjsb.entity.Expert;

/**
 * 专家的Dao层的实现类
 * @author DELL001
 *
 */
public class ExpertDaoImpl extends HibernateTemplate implements ExpertDao {

	@Override
	public List<Expert> findAll() {
		String hql = "from Expert";
		@SuppressWarnings("unchecked")
		List<Expert> list = (List<Expert>) super.find(hql);
		return list;
	}

	@Override
	public Expert findExpertById(Integer expertid) {
		return super.get(Expert.class, expertid);
	}

	@Override
	public void delete(Expert expert) {
		super.delete(expert);
	}

	@Override
	public void save(Expert expert) {
		super.save(expert);
	}

	//更新
	@Override
	public void update(Expert expert) {
		String hql = "update Expert e set e.name = '"+expert.getName()+"',e.unitname = '"+expert.getUnitname()+"',e.sex = '"+expert.getSex()+"',e.title = '"+expert.getTitle()+"',e.tel = '"+expert.getTel()+"',e.introduction = '"+expert.getIntroduction()+"' where e.expertid = "+expert.getExpertid()+"";
		Query query = super.getSessionFactory().openSession().createQuery(hql);
		query.executeUpdate();
		
	}

	//修改密码
	@Override
	public void updatePwd(Expert expert) {
		String hql = "update Expert set epassword = '"+expert.getEpassword()+"' where expertid = '"+expert.getExpertid()+"'";
		Query query = super.getSessionFactory().openSession().createQuery(hql);
		query.executeUpdate();
	}

	
}
