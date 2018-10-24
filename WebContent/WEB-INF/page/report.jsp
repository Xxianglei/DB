<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="${ctx}/public/images/ico.jpg" />
<!--需要引入JQuery-->
<script type="text/javascript" src="${ctx}/public/js/jquery-1.11.0.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script type="text/javascript" src="${ctx}/public/js/bootstrap.js"></script>
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">
<!-- css -->
<link rel="stylesheet" href="${ctx}/public/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
<link rel="stylesheet" href="${ctx}/public/assets/css/amazeui.css" />
<link rel="stylesheet" href="${ctx}/public/assets/css/common.min.css" />
<link rel="stylesheet" href="${ctx}/public/assets/css/news.min.css" />
</head>

<body bgcolor="#FFFFFF" style="height: 100%; padding-bottom: 50px;">
	<div align="right">

		<ul class="layui-nav" style="height: 90px;">
			<div id="logo">DataBase</div>
			<li class="layui-nav-item"><a href="${ctx}/pro/database"><b>首页</b></a>
			</li>
			<li class="layui-nav-item"><a href="${ctx}/pro/report"><b>公告</b></a>
			</li>
			<li class="layui-nav-item"><a href="${ctx}/pro/get_news?tag=0"><b>今日头条</b></a></li>
			<li class="layui-nav-item"><a href="${ctx}/pro/download"><b>资源下载</b></a>
			</li>
			<li class="layui-nav-item"><a href="${ctx}/pro/join_in"
				data-hover="加入我们"> <b>加入我们</b></a></li>
			<li class="layui-nav-item" lay-unselect=""><c:if
					test="${ sessionScope.name!=null }">
					<img src="//t.cn/RCzsdCq" class="layui-nav-img">
${ sessionScope.name } 	<dl class="layui-nav-child">
						<dd>
							<a href="${ctx}/pro/center">个人中心</a>
						</dd>

						<dd>
							<a href="${ctx}/pro/logout">退出登录</a>
						</dd>
					</dl>
				</c:if> <c:if test="${ sessionScope.name==null }">
					<a href="${ctx}/pro/log_in">登录*注册 </a>
				</c:if></li>
		</ul>
	</div>
	<div style="margin-top: 25px;">
		<hr />
	</div>

	<div class="layout-container">
		<div class="page-header">
			<div class="am-container">
				<h1 class="page-header-title">DataBase News</h1>
			</div>
		</div>

		<div class="breadcrumb-box">
			<div class="am-container">
				<ol class="am-breadcrumb">
					<li><a href="${ctx}/pro/database"><h3>首页</h3></a></li>
					<li class="am-active">DataBase News</li>
				</ol>
			</div>
		</div>
	</div>
	</div>

	<table align="center">
		<tr>
			<td>
				<div class="container" align="left"
					style="margin-top: 30px; margin-bottom: 30px;">

					<div style="padding: 10px; background-color: #F2F2F2;">
						<div class="layui-row layui-col-space15">

							<div class="layui-col-md12">

								<div class="layui-card">
									<c:forEach items="${requestScope.list}" var="news"
										varStatus="stat">
										<ul class="layui-timeline"
											style="margin-left: 20px; padding: 20px 10px 20px 0px;">

											<li class="layui-timeline-item"><i
												class="layui-icon layui-timeline-axis"></i>
												<div class="layui-timeline-content layui-text"
													style="margin-left: 10px;">

													<h2 class="layui-timeline-title">${news.title}</h2>
													<div class="layui-card-header" align="right">
														<font size="2" align="center"> 时间:
															${news.create_date }</font>
													</div>

													<p style="padding: 0px 10px;">${news.content}</p>
													<!-- <p style="padding: 0px 10px;">
														<i class="layui-icon layui-icon-face-smile"
															style="font-size: 30px; color: #1E9FFF;"></i>
													</p> -->
												</div></li>

										</ul>
									</c:forEach>


								</div>

							</div>
						</div>
					</div>
			</td>
			
		</tr>

	</table>


	<!-- script -->
	<script src="${ctx}/public/bower_components/jquery/dist/jquery.min.js"></script>
	<script
		src="${ctx}/public/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="${ctx}/public/bower_components/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="${ctx}/public/assets/js/jquery-2.1.0.js" charset="utf-8"></script>
	<script src="${ctx}/public/assets/js/amazeui.js" charset="utf-8"></script>
	<script src="${ctx}/public/layui/layui.js" charset="utf-8"></script>
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});
		});
	</script>
</body>

</html>
</html>