<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>
<body>
<div style="position: absolute;top:58px;right:5px;; width:auto;height: 30px;border:solid 0px #ff0000;">
<span style="font-size:13px;margin-right:5px;color: #fff;">管理员:${m.id}</span><a href="${pageContext.request.contextPath}/update_pass.jsp" target="main" class="top_a">修改密码</a><a href="${pageContext.request.contextPath}/manager/exit" class="top_a">退出</a>
</div>
<table style="height:90px;width: 100%;">
<tr>
	<td style="font-size:48px;font-family:'微软雅黑';font-weight: bolder;background:url('${pageContext.request.contextPath}/images/bg_manager.jpg');color:#fff;padding-left:10px;letter-spacing:15px; ">
	管理后台
	</td>
</tr>
</table>
	<div class="container clearfix">
		<div class="sidebar-wrap">
			<div class="sidebar-title">
				<h1>菜单</h1>
			</div>
			<div class="sidebar-content">
				<ul class="sidebar-list">
					<li><a href="#"><i class="icon-font">&#xe003;</i>信息维护</a>
						<ul class="sub-menu">
							<li><a href="${pageContext.request.contextPath}/ssss/findallxinwen" target="main"><i
									class="icon-font">&#xe004;</i>新闻维护</a></li>
						</ul>
						<ul class="sub-menu">
							<li><a href="${pageContext.request.contextPath}/mokuai/findAll" target="main"><i
									class="icon-font">&#xe004;</i>新闻模块维护</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!--/sidebar-->
		<div class="main-wrap">
			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font">&#xe06b;</i><span>欢迎使用新闻资讯管理后台。</span>
				</div>
			</div>
			<div class="result-wrap">
				<iframe scrolling="auto" id="main" name="main"
					width="100%" height="700dx"></iframe>

			</div>
			<!--/main-->
		</div>
</body>
</html>