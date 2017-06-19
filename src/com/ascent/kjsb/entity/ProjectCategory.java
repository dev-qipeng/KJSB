package com.ascent.kjsb.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 项目分类实体类
 * @author DELL001
 *
 */
public class ProjectCategory {

	private Integer categoryid;//主键
	private String categoryname;//项目类别名称
	private Date rep_start_time;//单位申报开始时间
	private Date rep_stop_time;//单位申报截止时间
	private Date exp_start_time;//专家评审开始时间
	private Date exp_stop_time;//专家评审截止时间

	private Expert expert;//多对一的，项目是属于哪个专家来审核

	private Set<Project> projects = new HashSet<Project>();//一对多的，一个项目类别对多个项目，
	
	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public Date getRep_start_time() {
		return rep_start_time;
	}

	public void setRep_start_time(Date rep_start_time) {
		this.rep_start_time = rep_start_time;
	}

	public Date getRep_stop_time() {
		return rep_stop_time;
	}

	public void setRep_stop_time(Date rep_stop_time) {
		this.rep_stop_time = rep_stop_time;
	}

	public Date getExp_start_time() {
		return exp_start_time;
	}

	public void setExp_start_time(Date exp_start_time) {
		this.exp_start_time = exp_start_time;
	}

	public Date getExp_stop_time() {
		return exp_stop_time;
	}

	public void setExp_stop_time(Date exp_stop_time) {
		this.exp_stop_time = exp_stop_time;
	}

	public Expert getExpert() {
		return expert;
	}

	public void setExpert(Expert expert) {
		this.expert = expert;
	}

	public Set<Project> getProjects() {
		return projects;
	}

	public void setProjects(Set<Project> projects) {
		this.projects = projects;
	}
	
}
