package com.ascent.kjsb.entity;

import java.util.Date;

/**
 * 项目实体类
 * 
 * @author DELL001
 *
 */
public class Project {

	private Integer projectid;// 主键
	private String applicant;// 申请人
	private String grade;// 职称
	private String education;// 学历
	private Date fill_date;// 填报时间
	private String status;//现状
	private String future;// 应用前景
	private String analysis;// 重点难点分析
	private String way;// 研究方法
	private String result;// 预期研究成果
	private String projectname;// 申请项目名称
	private String capital;// 申请资金
	private String expert_opinion;// 专家评审意见
	private double score;// 专家评分
	private Integer ispass;// 是否通过评分

	private ProjectCategory category;// 多对一的 一个项目只属于一个项目分类
	private Unit unitid;// 单位id


	public String getApplicant() {
		return applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public Date getFill_date() {
		return fill_date;
	}

	public void setFill_date(Date fill_date) {
		this.fill_date = fill_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFuture() {
		return future;
	}

	public void setFuture(String future) {
		this.future = future;
	}

	public String getAnalysis() {
		return analysis;
	}

	public void setAnalysis(String analysis) {
		this.analysis = analysis;
	}

	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public String getExpert_opinion() {
		return expert_opinion;
	}

	public void setExpert_opinion(String expert_opinion) {
		this.expert_opinion = expert_opinion;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}


	public ProjectCategory getCategory() {
		return category;
	}

	public void setCategory(ProjectCategory category) {
		this.category = category;
	}

	public Integer getProjectid() {
		return projectid;
	}

	public void setProjectid(Integer projectid) {
		this.projectid = projectid;
	}

	public Integer getIspass() {
		return ispass;
	}

	public void setIspass(Integer ispass) {
		this.ispass = ispass;
	}

	public Unit getUnitid() {
		return unitid;
	}

	public void setUnitid(Unit unitid) {
		this.unitid = unitid;
	}

}
