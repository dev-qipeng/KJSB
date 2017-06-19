<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>科技项目申报系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" id="styles" href="${pageContext.request.contextPath }/css/andreas08(blue).css"
	type="text/css" media="screen,projection" />
<script type="text/javascript" src="${pageContext.request.contextPath }js/acesys.js"></script>
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
		<div id="content">
			<h2>
				<strong>欢迎使用项目申报系统</strong>
			</h2>

			<div class="splitcontentleft">
				<div class="box">
					<h3>
						<img src="${pageContext.request.contextPath }/images/lxrycyy.gif" alt="" width="184" height="124" />
					</h3>
				</div>
			</div>

			<div class="splitcontentright">
				<p>项目申报管理系统开发成本低，投入资金少。可以使项目申报的各项管理工作，
					变得方便快捷，不仅节省了时间，还节省了人力，提高了准确性。项目管理部门通过自己的网站，能够大大提高工作的透明度以及工作效率。</p>

				<p>
					<strong>Good luck with your new design!</strong>
				</p>
			</div>
		</div>

		<div id="subcontent">
			<form name="form" method="post" action="">
				<div class="small box">
					<table width="150" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="30%" valign="middle"><img
								src="${pageContext.request.contextPath }/images\username.jpg" width="61" height="17" align="bottom" />
								<input name="username" id="username" type="text" size="7" /></td>
						</tr>
						<tr>
							<td valign="middle"><img src="${pageContext.request.contextPath }/images\password.jpg"
								width="61" height="17" /> <input name="password" id="password"
								type="password" size="6" /></td>
						</tr>
						<tr>
							<td height="30" valign="bottom"><input name="image"
								type="image" onclick="return checkLogin(form);"
								src="${pageContext.request.contextPath }/images\login_1_7.jpg" alt="登录" width="44" height="17"
								border="0" /></td>
						</tr>
					</table>
				</div>
			</form>
			<h2>友情链接</h2>
			<ul class="menublock">
				<li><a href="http://www.ascenttech.cn" target="_blank">亚思晟视频在线</a></li>
				<li><a href="http://www.ascenttech.com.cn/" target="_blank">亚思晟公司主页</a></li>
			</ul>

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