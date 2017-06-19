package com.ascent.kjsb.entity;

/**
 * 管理员实体类
 * 
 * @author DELL001
 *
 */
public class Admin {

	private Integer aid;//主键
	private String aname;//管理员名称
	private String department;//所属单位
	private String ausername;//管理员账号
	private String apassword;//管理员密码

	public String getAusername() {
		return ausername;
	}

	public void setAusername(String ausername) {
		this.ausername = ausername;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}
}
