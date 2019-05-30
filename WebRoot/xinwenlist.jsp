<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
</head>

<body>
	<!--/sidebar-->
	<div class="main-wraps">

		<div class="crumb-wrap">
			<div class="crumb-list">
				<i class="icon-font"></i><a href="index.html">首页</a><span
					class="crumb-step">&gt;</span><span class="crumb-name">新闻列表</span>
			</div>
		</div>
			<div class="result-wrap">
				<div class="result-title">
					<div class="result-list">
						<a href="${pageContext.request.contextPath}/ssss/toadd" target="main"><i
							class="icon-font"></i>新增新闻</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>
							<input type="hidden"  id="realpath" name="realpath" value="">
						</span>
					</div>

				</div>
		<div class="result-wrap">
				<div class="result-content">
					<table class="result-tab" width="100%">
						<tr>
							<th>序号</th>
							<th>标题</th>
							<th>添加时间</th>
							<th>操作</th>
						</tr>
						 <c:forEach var="x" items="${x}" varStatus="status">

							<tr>
								<td>${status.index+1}</td>
								<td>${x.title }</td>
								<td>${x.time}</td>
								<td><a class="link-update"
									href="${pageContext.request.contextPath}/ssss/toupx/${x.id}" target="main">更新</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a class="link-del"
									href="${pageContext.request.contextPath}/ssss/del/${x.id}">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
							</tr>
						</c:forEach> 
					</table>
				</div>
			</form>
		</div>
	</div>
	<!--/main-->
</body>
</html>
