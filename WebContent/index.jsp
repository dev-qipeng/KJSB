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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/acesys.js"></script>
<script type="text/JavaScript">
<!--
	function MM_swapImgRestore() { //v3.0
		var i, x, a = document.MM_sr;
		for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++)
			x.src = x.oSrc;
	}

	function MM_preloadImages() { //v3.0
		var d = document;
		if (d.images) {
			if (!d.MM_p)
				d.MM_p = new Array();
			var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
			for (i = 0; i < a.length; i++)
				if (a[i].indexOf("#") != 0) {
					d.MM_p[j] = new Image;
					d.MM_p[j++].src = a[i];
				}
		}
	}

	function MM_findObj(n, d) { //v4.01
		var p, i, x;
		if (!d)
			d = document;
		if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
			d = parent.frames[n.substring(p + 1)].document;
			n = n.substring(0, p);
		}
		if (!(x = d[n]) && d.all)
			x = d.all[n];
		for (i = 0; !x && i < d.forms.length; i++)
			x = d.forms[i][n];
		for (i = 0; !x && d.layers && i < d.layers.length; i++)
			x = MM_findObj(n, d.layers[i].document);
		if (!x && d.getElementById)
			x = d.getElementById(n);
		return x;
	}

	function MM_swapImage() { //v3.0
		var i, j = 0, x, a = MM_swapImage.arguments;
		document.MM_sr = new Array;
		for (i = 0; i < (a.length - 2); i += 3)
			if ((x = MM_findObj(a[i])) != null) {
				document.MM_sr[j++] = x;
				if (!x.oSrc)
					x.oSrc = x.src;
				x.src = a[i + 2];
			}
	}
//-->
</script>
</head>

<body
	onload="MM_preloadImages('images/index-b11.gif','images/index-b22.gif')">

	<div id="container">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="467"><img src="${pageContext.request.contextPath }/images/index-pic1.gif" alt=""
					width="467" height="420" /></td>
				<td width="293" background="${pageContext.request.contextPath }/images/index-pic2.gif"><table
						width="200" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td valign="bottom">&nbsp;</td>
						</tr>
						<tr>
							<td height="40" valign="bottom"><a href="${pageContext.request.contextPath }/jieshao.jsp"
								onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image6','','images/index-b11.gif',1)"><img
									src="${pageContext.request.contextPath }/images/index-b11.gif" alt="" width="153" height="32"
									border="0" /></a></td>
						</tr>
						<tr>
							<td height="40" valign="bottom"><a href="#"
								onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image5','','images/index-b22.gif',0)"></a><a
								href="${pageContext.request.contextPath }/zhinan.jsp" onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image6','','images/index-b11.gif',1)"><img
									src="${pageContext.request.contextPath }/images/index-b22.gif" alt="" width="153" height="32"
									border="0" /></a><a href="#" onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image5','','images/index-b22.gif',1)"></a></td>
						</tr>
						<tr>
							<td height="40" valign="bottom"><a href="${pageContext.request.contextPath }/login.jsp"
								onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image6','','images/index-b11.gif',1)"><img
									src="${pageContext.request.contextPath }/images/index-b33.gif" alt="" width="153" height="32"
									border="0" /></a><a href="#" onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image5','','images/index-b33.gif',1)"></a></td>
						</tr>
						<tr>
							<td height="40" valign="bottom"><a href="${pageContext.request.contextPath }/lianxi.jsp"
								onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image6','','images/index-b11.gif',1)"><img
									src="${pageContext.request.contextPath }/images/index-b44.gif" alt="" width="153" height="32"
									border="0" /></a><a href="#" onmouseout="MM_swapImgRestore()"
								onmouseover="MM_swapImage('Image5','','images/index-b44.gif',1)"></a></td>
						</tr>

					</table></td>
			</tr>
		</table>
	</div>

</body>
</html>