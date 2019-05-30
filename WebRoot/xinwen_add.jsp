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
<script type="text/javascript">
	function addCity() {
		window
				.open(
						"zhuanye_add.jsp",
						"newwindow",
						"height=600, width=800, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");

	}
</script>
</head>

<body>

	<!--/sidebar-->
	<div class="main-wraps">

		<div class="crumb-wrap">
			<div class="crumb-list">
				<i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span
					class="crumb-step">&gt;</span><a class="crumb-name"
					href="/jscss/admin/design/">新闻信息</a><span class="crumb-step">&gt;</span><span>新增新闻</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="button" value="返回" onClick="history.go(-1)" class="btn btn6">
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
				<form action="${pageContext.request.contextPath}/ssss/addNews"
					method="post"  enctype="multipart/form-data">
					<table class="insert-tab" width="100%" style="margin-top: 100dx;">
						<tbody>
						<tr>
								<th><i class="require-red">*</i>新闻类别：</th>
								<td><SELECT id=xinwen.mname
									name=xinwen.mname>
										<c:forEach var="xs" items="${m}"
											varStatus="status">
											<OPTION value="${xs.title}">${xs.title}</OPTION>
										</c:forEach>
								</SELECT>
								</td>
							</tr>
							<tr>
								<th><i class="require-red">*</i>新闻标题：</th>
								<td><input class="common-text required"
									id="xinwen.title" name="xinwen.title" size="50"
									value="" type="text">
								</td>
							</tr>
							 <tr>
                                <th>内容：</th>
                                <td><textarea name="xinwen.msg" class="common-textarea" id="xinwen.msg" cols="30" style="width: 98%;" rows="10"></textarea></td>
                            </tr>
<tr>
								<th><i class="require-red"></i>新闻图片：</th>
								<td><input type="file" name="tupian"
								value="path" id="tupian"/>
								</td>
							</tr>
							<tr>
								<th></th>
								<td><input class="btn btn-primary btn6 mr10" value="提交"
									type="submit"> <input class="btn btn6"
									onClick="history.go(-1)" value="返回" type="button">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>

	</div>

</body>
</html>
