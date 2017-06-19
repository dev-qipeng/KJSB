<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>科技项目申报系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/andreas08(blue).css" type="text/css"
	media="screen,projection" />
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000
}
-->
</style>
</head>

<body>
	<div id="container">

		<div id="header"></div>

		<div id="navigation">
			<ul>
				<li class="selected"></li>
				<li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
				<li><a href="${pageContext.request.contextPath }/jieshao.jsp">系统介绍</a></li>
				<li><a href="${pageContext.request.contextPath }/zhinan.jsp">审报指南</a></li>
				<li><a href="${pageContext.request.contextPath }/login.jsp">项目申报</a></li>
				<li><a href="${pageContext.request.contextPath }/lianxi.jsp">联系我们</a></li>
				<li></li>
			</ul>
		</div>

	</div>
	<div id="container">
		<div id="content2">
			<table width="100%" height="41" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td width="15" height="18" align="left" valign="top"><div
							align="left"></div></td>
					<td width="385" align="left" valign="bottom" class="12">&nbsp;</td>
				</tr>
				<tr>
					<td height="4" colspan="2" align="left" valign="bottom"></td>
				</tr>
				<tr>
					<td height="15" align="left" valign="top">&nbsp;</td>
					<td height="15" align="left" valign="top" class="12"><table
							width="100%" height="20" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="20" align="center"><div class="right_proaducts">
										<div align="left">我的位置&gt;&gt;科技项目申报&gt;项目详细信息</div>
									</div>
									<form action="" method="post" id="form">
										<div class=padding>
											<div id=middlebody>
												<table cellspacing="0" cellpadding="0" width="100%"
													border="0">
													<tbody>
														<tr>
															<td><div align="left">
																	|&nbsp;&nbsp;欢迎,admin:<s:property value="aname" />&nbsp;&nbsp;|&nbsp;&nbsp; <a
																		class="table_t" href="${pageContext.request.contextPath }/index.jsp">注销</a>&nbsp;&nbsp;|&nbsp;&nbsp;
																	<a href="javascript:history.go(-1)">后退</a>&nbsp;&nbsp;|
																</div></td>
															<td><div align="center">
																	<a href="<%=basePath %>/admin_user.action">登录用户管理</a>
																</div></td>
															<td><div align="center">
																	<a href="<%=basePath %>/admin/expert_showExpert.action">专家信息管理</a>
																</div></td>
															<td height="50"><div align="center">
																	<a href="<%=basePath %>/admin/unit_showUnit.action">单位信息管理</a>
																</div></td>
															<td><div align="center">
																	<a href="<%=basePath %>/admin_unit.project">项目管理</a>
																</div></td>
														</tr>
													</tbody>
												</table>
												<table class="mars" cellspacing="1" cellpadding="0"
													width="100%" border="0">
													<tbody>
														<tr bgcolor="#fba661" height="30">
															<td width="7%"><div align="center">编号ID</div></td>
															<td width="8%"><div align="center">单位名称</div></td>
															<td width="15%"><div align="center">单位地址</div></td>
															<td width="8%"><div align="center">法人</div></td>
															<td width="8%"><div align="center">注册资金</div></td>
															<td width="7%"><div align="center">性质</div></td>
															<td width="10%"><div align="center">电话</div></td>
															<td width="19%"><div align="center">简介</div></td>
															<td width="9%"><div align="center">修改</div></td>
															<td width="9%"><div align="center">删除</div></td>
														</tr>
														<s:iterator value="#session.unitList" var="ul">
														<tr bgcolor="#e4f1fe">
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.unitid"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.unitname"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.address"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.corporation"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.investment"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.type"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.tel"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center"><s:property value="#ul.introduction"/></div></td>
															<td bgcolor="#f3f3f3"><div align="center">
																	<a href="admin_updateUnit.action?unitid=<s:property value="#ul.unitid"/>">修改</a>
																</div></td>
															<td bgcolor="#f3f3f3"><div align="center">
																	<a href="admin_deleteUnit.action?unitid=<s:property value="#ul.unitid"/>">删除</a>
																</div></td>
														</tr>
														</s:iterator>
													</tbody>
												</table>
											</div>
										</div>
									</form></td>
							</tr>
						</table> <br />
						<div class="table_wz"></div></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="container">
		<div id="footer">
			<p>
				<a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司
					&copy;2004-2008|京ICP备05005681</a>
			</p>
		</div>

	</div>
</body>
</html>