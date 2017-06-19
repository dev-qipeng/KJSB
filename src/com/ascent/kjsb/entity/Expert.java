package com.ascent.kjsb.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 专家实体类
 * @author DELL001
 *
 */
public class Expert {

	private Integer expertid;//主键
	private String name;//专家姓名
	private String sex;//性别
	private String title;//ְ职称
	private String tel;//电话
	private String introduction;//研究介绍
	private String eusername;//专家账号
	private String epassword;//专家密码
	
	private String unitname;//单位名字
	private Set<ProjectCategory> categorys = new HashSet<ProjectCategory>();//一对多的，对多个项目分类
	
	public Integer getExpertid() {
		return expertid;
	}

	public void setExpertid(Integer expertid) {
		this.expertid = expertid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getEusername() {
		return eusername;
	}

	public void setEusername(String eusername) {
		this.eusername = eusername;
	}

	public String getEpassword() {
		return epassword;
	}

	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}

	public String getUnitname() {
		return unitname;
	}

	public void setUnitname(String unitname) {
		this.unitname = unitname;
	}

	public Set<ProjectCategory> getCategorys() {
		return categorys;
	}

	public void setCategorys(Set<ProjectCategory> categorys) {
		this.categorys = categorys;
	}
	
}
