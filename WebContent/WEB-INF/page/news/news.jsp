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
						<a href="${ctx}/pro/log_in">登录 </a>


					</c:if></li>
			</ul>
		</div>
	</nav>
	<!-- 	<script type="text/javascript">
		function get() {
			var xmlhttp;
			if (window.XMLHttpRequest) {
				//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
				xmlhttp = new XMLHttpRequest();
			} else {
				// IE6, IE5 浏览器执行代码
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					alert(xmlhttp.responseText);
				}
			}
			xmlhttp.open("GET", "http://localhost:8080/people/pro/get_news/",
					true);
			xmlhttp.send();
		}
	</script> -->

	<!-- 主内容 -->
	<div class="container" style="margin-top: 150px; width: 70%;">
		<div class="row">
			<div class="col-sm-2">
				<div class="list-group side-bar hidden-xs">
					<a href="${ctx}/pro/get_news?tag=0" class="list-group-item active">推荐</a>
					<a href="${ctx}/pro/get_news?tag=1" class="list-group-item">故事</a>
					<a href="${ctx}/pro/get_news?tag=2" class="list-group-item">手绘</a>
					<a href="${ctx}/pro/get_news?tag=3" class="list-group-item">旅行</a>
					<a href="${ctx}/pro/get_news?tag=4" class="list-group-item">电影</a>
					<a href="${ctx}/pro/get_news?tag=5" class="list-group-item">IT</a>
					<a href="${ctx}/pro/get_news?tag=6" class="list-group-item">读书</a>
					<a href="${ctx}/pro/get_news?tag=7" class="list-group-item">程序员</a>
					<a href="${ctx}/pro/get_news?tag=8" class="list-group-item">职场</a>
					<a href="${ctx}/pro/get_news?tag=9" class="list-group-item">创业</a>
					<a href="${ctx}/pro/get_news?tag=10" class="list-group-item">科普</a>
				</div>

			</div>
			<div class="col-sm-7">
				<div class="news-list" id="LAY_demo1"></div>
			</div>
			<div class="col-sm-3">
				<div class="search-bar"></div>
				<div class="side-bar-card flag clearfix">
					<div class="col-xs-5">
						<img src="${ctx}/public/images/1-1.png">
					</div>
					<div class="col-xs-7">
						<div class="text-lg">意见反馈</div>
						<br> <br>
						<div>1767925069@qq.com</div>
					</div>
				</div>

				<div class="side-bar-card">
					<div class="card-title">24小时热闻</div>
					<div class="card-body">
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
								<a href='
																										+ "${ctx}/pro/get_newscontent?id="
																										+ item.id
																										+ ' class="title">'
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
	<script>
		(function(T, h, i, n, k, P, a, g, e) {
			g = function() {
				P = h.createElement(i);
				a = h.getElementsByTagName(i)[0];
				P.src = k;
				P.charset = "utf-8";
				P.async = 1;
				a.parentNode.insertBefore(P, a)
			};
			T["ThinkPageWeatherWidgetObject"] = n;
			T[n] || (T[n] = function() {
				(T[n].q = T[n].q || []).push(arguments)
			});
			T[n].l = +new Date();
			if (T.attachEvent) {
				T.attachEvent("onload", g)
			} else {
				T.addEventListener("load", g, false)
			}
		}(window, document, "script", "tpwidget",
				"//widget.seniverse.com/widget/chameleon.js"))
	</script>
	<script>
		tpwidget("init", {
			"flavor" : "bubble",
			"location" : "WX4FBXXFKE4F",
			"geolocation" : "enabled",
			"position" : "bottom-right",
			"margin" : "10px 10px",
			"language" : "auto",
			"unit" : "c",
			"theme" : "chameleon",
			"uid" : "UADA85A442",
			"hash" : "b4551ed90eb3507a048f3656607440ba"
		});
		tpwidget("show");
	</script>
</body>
</html>