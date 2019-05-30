<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
					class="crumb-step">&gt;</span>
					密码更新
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
				<form action="${pageContext.request.contextPath}/manager/updateManager"
					method="post">
					<table class="insert-tab" width="100%" style="margin-top: 100dx;">
						<tbody>
							<tr>
								<th><i class="require-red">*</i>原始密码：</th>
								<td><input class="common-text required"
									id="oldpass" name="oldpass" size="50"
									value="" type="text">
									<input 
									id="id" name="id" size="50"
									value="${m.id} " type="hidden">
								</td>
							</tr>
							<tr>
								<th><i class="require-red">*</i>新密码：</th>
								<td><input class="common-text required"
									id="newpass" name="newpass" size="50"
									value="" type="text">
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
