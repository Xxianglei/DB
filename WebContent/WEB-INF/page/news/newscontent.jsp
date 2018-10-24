<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>今日头条</title>
<!-- 如果使用了导航条，需要移除所有导航条的折叠和展开行为。
	   对于栅格布局，额外增加 .col-xs-* 类或替换掉 .col-md-* 和 .col-lg-*。 不要担心，针
		对超小屏幕设备的栅格系统能够在所有分辨率的环境下展开。-->
<link href="${ctx}/public/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
<link rel="stylesheet" href="${ctx}/public/css/main.css" />
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">

</head>
<body>
	<!-- 导航条 -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div align="right">

			<ul class="layui-nav " style="height: 90px;">
				<div id="logo">DataBase</div>
				<li class="layui-nav-item"><a href="${ctx}/pro/database"><b>首页</b></a></li>
				<li class="layui-nav-item"><a href="${ctx}/pro/report"><b>公告</b></a></li>
				<li class="layui-nav-item"><a href="${ctx}/pro/get_news?tag=0"><b>今日头条</b></a></li>
				<li class="layui-nav-item"><a href="${ctx}/pro/download"><b>资源下载</b></a></li>
				<li class="layui-nav-item"><a href="${ctx}/pro/join_in"
					data-hover="加入我们"> <b>加入我们</b>
				</a></li>
				<li class="layui-nav-item" lay-unselect=""><c:if
						test="${ sessionScope.name!=null }">
						<img src="//t.cn/RCzsdCq" class="layui-nav-img">
${ sessionScope.name }
	<dl class="layui-nav-child">
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
	</nav>
	<!-- 主内容 -->
	<div class="container" style="margin-top: 150px; width: 70%;">
		<div class="col-xs-8">
			<h1 class="news-title">${news.title}</h1>
			<hr>
			<div class="news-status" style="margin-top: 2px;">
				${news.time}
				<div class="label label-default">作者:</div>
				${news.author}

			</div>
			<div class="news-content">${news.content}</div>
		</div>
		<div class="col-xs-4">
			<div class="side-bar-card">
				<div class="card-title">相关推荐</div>
				<div class="card-body">
					<div class="list">
						<c:forEach items="${about}" var="hot" step="1">
							<div class="item clearfix">
								<div class="col-xs-5 no-padding-h">
									<img src="${hot.imgCover}" style="height:100px;width:160px;">
								</div>
								<div class="col-xs-7" >
									<a  style="margin-top: 10px;" class="title" href="${ctx}/pro/get_newscontent?id=${hot.id}">${hot.title}</a>
									<div class="desc" style="margin-top: 10px;">${hot.readNum/1000}K阅读
										|${hot.commentNum/1000} K评论</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="side-bar-card">
				<div class="card-title">24小时热闻</div>
				<div class="card-body">
					<div class="list">
						<div class="list">
							<c:forEach items="${hotlist}" var="hot" step="1">
								<div class="item">
									<a class="title" href="${ctx}/pro/get_newscontent?id=${hot.id}">${hot.title}</a>
									<div class="desc">${hot.readNum/1000}K阅读
										|${hot.commentNum/1000} K评论</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="footer">Copyright © 2018 | 数据库工作室</div>

	<script src="${ctx}/public/js/jquery-3.2.1.min.js"></script>
	<script src="${ctx}/public/js/bootstrap.min.js"></script>
	<script src="${ctx}/public/scripts/main.js"></script>
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
	<script>
		layui
				.use(
						'flow',
						function() {
							var flow = layui.flow;
							var limit = 10;
							flow
									.load({
										elem : '#LAY_demo1' //流加载容器
										,
										done : function(page, next) { //执行下一页的回调
											//页数
											//以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
											$
													.getJSON(
															'http://localhost:8080/people/pro/get_News2/?page='
																	+ page,
															function(res) {
																if (res.status != 0) {
																	var lis = [];
																	//假设你的列表返回在data集合中

																	layui
																			.each(
																					res,
																					function(
																							index,
																							item) {

																						lis
																								.push('	<div class="news-list-item clearfix" style="padding: 5px;" >\
										<div class="col-xs-5" align="center">\
								<img  align="left" src="'+item.imgCover+'" style="height: 160px; width: 240px;" ></img>\
								</div>\
								<div class="col-xs-7">\
								<a href='+"news.html"+' class="title">'
																										+ item.title
																										+ '</a>\
								<span style="padding: 10px;">'
																										+ item.brief
																										+ ' </span>\
								<div class="info" style="margin-top: 0px;" align="right">\
								<span class="avatar"><img src="${ctx}/public/images/logo.png"></img></span>\
								<span>'
																										+ item.readNum
																										/ 1000
																										+ 'K阅读</span>•\
								</div>\
								</div>\
								</div>');
																					});
																	//执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
																	//pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
																	next(
																			lis
																					.join(''),
																			page < 100);
																}
															});
										}
									});

						});
	</script>
</body>
</html>