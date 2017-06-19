<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>科技项目申报系统</title>
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

									<div class=padding>
										<div id=centerbody>
											<table cellspacing="0" cellpadding="0" width="100%"
												border="0">
												<tbody>
													<tr>
														<td><div align="left">
																|&nbsp;&nbsp;欢迎,单位用户:
																<s:property value="unitname" />
																&nbsp;&nbsp;|&nbsp;&nbsp;<a class="table_t"
																	href="${pageContext.request.contextPath }/index.jsp">注销</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
																	href="javascript:history.go(-1)">后退</a>&nbsp;&nbsp;|
															</div></td>
														<td><div align="center">
																<a
																	href="${pageContext.request.contextPath }/unit/viewunitinfo.jsp">单位信息</a>
															</div></td>
														<td><div align="center">
																<a
																	href="${pageContext.request.contextPath }/unit/reworkpassword.jsp">修改密码</a><a
																	href="${pageContext.request.contextPath }/expert/viewexpertinfo.jsp"></a>
															</div></td>
														<td><div align="center">
																<a
																	href="${pageContext.request.contextPath }/unit/showprojectCategorys.jsp">项目申报管理</a><a
																	href="${pageContext.request.contextPath }/expert/reworkpassword.jsp"></a>
															</div></td>
														<td height="50"><div align="center">
																<a
																	href="${pageContext.request.contextPath }/unit/simpleSearch.jsp">信息查询</a><a
																	href="${pageContext.request.contextPath }/expert/showprojectCategorys.jsp"></a>
															</div></td>
													</tr>
												</tbody>
											</table>
											<form action="" method="post" id="form">
												<table width="70%" border="0" cellpadding="0"
													cellspacing="1">
													<tbody>
														<tr>
															<td width="30%" height="31" align="center"
																bgcolor="#f3f3f3">��λ���</td>
															<td width="70%" align="left" bgcolor="#f3f3f3"><div
																	align="left">
																	<input id="unitname" value="util" name="unitname" />
																</div></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ��ַ</td>
															<td width="70%" align="left" bgcolor="#f3f3f3"><input
																id="address" value="�йش����԰" name="address" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ����</td>
															<td align="left" bgcolor="#f3f3f3"><input
																id="corporation" value="������" name="corporation" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">ע���ʽ�</td>
															<td align="left" bgcolor="#f3f3f3"><input
																id="investment" value="500��" name="investment" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ����</td>
															<td align="left" bgcolor="#f3f3f3"><input id="type"
																value="����" name="type" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ�绰</td>
															<td align="left" bgcolor="#f3f3f3"><input id="tel"
																value="62665840" name="tel" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ����</td>
															<td align="left" bgcolor="#f3f3f3"><input id="email"
																value="grui@sina.com" name="email" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ����</td>
															<td align="left" bgcolor="#f3f3f3"><input id="fax"
																value="62665840" name="fax" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ�ʱ�</td>
															<td align="left" bgcolor="#f3f3f3"><input
																id="zipcode" value="100085" name="zipcode" /></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">��λ���</td>
															<td align="left" bgcolor="#f3f3f3"><textarea
																	id="introduction" name="introduction" rows="3"
																	cols="50">great company</textarea></td>
														</tr>
														<tr>
															<td align="center" bgcolor="#f3f3f3">&nbsp;</td>
															<td align="left" bgcolor="#f3f3f3"><input
																id="submit" type="submit" value="�޸�" name="submit2" />
																<input id="button2" type="reset" value="ȡ��"
																name="button2" /></td>
														</tr>
													</tbody>
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