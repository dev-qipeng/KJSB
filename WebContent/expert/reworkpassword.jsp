<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/andreas08(blue).css"
	type="text/css" media="screen,projection" />
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000
}
-->
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/acesys.js"></script>
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
								<td height="20"><div class="right_proaducts">
										我的位置&gt;&gt;科技项目申报&gt;专家信息<br /> <br />
									</div>

									<div class=padding>
										<div id=middlebody>
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tbody>
													<tr>
														<td><div align="left">
																|&nbsp;&nbsp;欢迎,专家用户:
																<s:property value="%{model.name}" />
																&nbsp;&nbsp;|&nbsp;&nbsp;<a class="table_t"
																	href="${pageContext.request.contextPath }/index.jsp">注销</a>&nbsp;&nbsp;|&nbsp;&nbsp;
																<a href="javascript:history.go(-1)">后退</a>&nbsp;&nbsp;|
															</div></td>
														<td><div align="center">
																<a href="expert_expertinfo.action">专家信息</a>
															</div></td>
														<td><div align="center">
																<a href="expert_updatepwd.action">修改密码</a>
															</div></td>
														<td height="50"><div align="center">
																<a href="expert_project.action">项目管理</a>
															</div></td>
													</tr>
												</tbody>
											</table>
											<form action="expert_reworkpwd.action" method="post"
												id="form" onsubmit="return checkExpertPassword(this)">
												<s:hidden name="expertid" value="%{model.expertid}" />
												<table width="50%" border="0" cellpadding="0"
													cellspacing="1">
													<tr>
														<td width="25%" height="20" align="right"
															bgcolor="#f3f3f3">户名</td>
														<td width="2%" align="right" bgcolor="#f3f3f3">&nbsp;</td>
														<td width="73%" height="20" align="left" bgcolor="#f3f3f3"><div
																align="left">
																<s:property value="%{model.name}" />
															</div></td>
													</tr>
													<s:actionmessage />
													<tr>
														<td height="20" align="right" bgcolor="#f3f3f3">新密码</td>
														<td align="right" bgcolor="#f3f3f3">&nbsp;</td>
														<td height="20" align="left" bgcolor="#f3f3f3"><div
																align="left">
																<input type="password" id="temp2" name="newpassword" />
															</div></td>
													</tr>
													<tr>
														<td height="20" align="right" bgcolor="#f3f3f3">重复新密码</td>
														<td align="right" bgcolor="#f3f3f3">&nbsp;</td>
														<td height="20" align="left" bgcolor="#f3f3f3"><div
																align="left">
																<input type="password" id="temp3"
																	name="newdoublepassword" />
															</div></td>
													</tr>
													<tr>
														<td height="20" colspan="2" align="center"
															bgcolor="#f3f3f3">&nbsp;</td>
														<td height="20" align="center" bgcolor="#f3f3f3"><div
																align="left">
																<input name="submit" type="submit" value="确认更改" />
															</div></td>
													</tr>
												</table>
											</form>
										</div>
									</div></td>
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