
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
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

</head>

<body bgcolor="#FFFFFF">
	<div align="right">

		<ul class="layui-nav" style="height: 90px;">
			<div id="logo">DataBase</div>
			<li class="layui-nav-item"><a href="${ctx}/pro/database"><b>首页</b></a>
			</li>
			<li class="layui-nav-item"><a href="${ctx}/pro/report"><b>公告</b></a>
			</li>
			<li class="layui-nav-item"><a href="${ctx}/pro/get_news?tag=0"><b>文章</b></a></li>
			<li class="layui-nav-item"><a href="${ctx}/pro/download"><b>资源下载</b></a>
			</li>
			<li class="layui-nav-item"><a href="${ctx}/pro/join_in"
				data-hover="加入我们"> <b>加入我们</b></a></li>
			<li class="layui-nav-item" lay-unselect=""><c:if
					test="${ sessionScope.name!=null }">
					<img src="//t.cn/RCzsdCq" class="layui-nav-img">
${ sessionScope.name }<dl class="layui-nav-child">
						<dd>
							<a href="${ctx}/pro/center">个人中心</a>
						</dd>

						<dd>
							<a href="${ctx}/pro/logout">退出登录</a>
						</dd>
					</dl>
				</c:if> <c:if test="${ sessionScope.name==null }">
					<a href="${ctx}/pro/log_in">登录</a>
				</c:if></li>
		</ul>
	</div>
	<div style="margin-top: 25px;">
		<hr />
	</div>
	<div class="container" style="width: 100%;">
		<section id="faq" class="section faq" style="margin-top: 100px;">
			<div class="container">
				<div class="nav breadcrumb">
					<a href="${ctx}/pro/database">工作室</a> / <a href="">资源下载</a>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h3 class="section-title">资源下载</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="layui-collapse" lay-filter="test">
							<div class="layui-colla-item">
								<h2 class="layui-colla-title">为什么JS社区大量采用未发布或者未广泛支持的语言特性？</h2>
								<div class="layui-colla-content">
									<p>有不少其他答案说是因为JS太差。我下面的答案已经说了，这不是根本性的原因。但除此之外，我还要纠正一些对JS具体问题的误解。JS当初是被作为脚本语言设计的，所以某些问题并不是JS设计得差或者是JS设计者的失误。比如var的作用域问题，并不是“错误”，而是当时绝大部分脚本语言都是这样的，如perl/php/sh等。模块的问题也是，脚本语言几乎都没有模块/命名空间功能。弱类型、for-in之类的问题也是，只不过现在用那些老的脚本语言的人比较少，所以很多人都误以为是JS才有的坑。另外有人说JS是半残语言，满足不了开发需求，1999年就该死。半残这个嘛，就夸张了。JS虽然有很多问题，但是设计总体还是优秀的。——来自知乎@贺师俊</p>
								</div>
							</div>
							<div class="layui-colla-item">
								<h2 class="layui-colla-title">为什么前端工程师多不愿意用 Bootstrap 框架？</h2>
								<div class="layui-colla-content">
									<p>因为不适合。如果希望开发长期的项目或者制作产品类网站，那么就需要实现特定的设计，为了在维护项目中可以方便地按设计师要求快速修改样式，肯定会逐步编写出各种业务组件、工具类，相当于为项目自行开发一套框架。——来自知乎@Kayo</p>
								</div>
							</div>
							<div class="layui-colla-item">
								<h2 class="layui-colla-title">layui 更适合哪些开发者？</h2>
								<div class="layui-colla-content">
									<p>
										在前端技术快速变革的今天，layui
										仍然坚持语义化的组织模式，甚至于模块理念都是采用类AMD组织形式，并非是有意与时代背道而驰。layui
										认为以jQuery为核心的开发方式还没有到完全消亡的时候，而早期市面上基于jQuery的UI都普通做得差强人意，所以需要有一个新的UI去重新为这一领域注入活力，并采用一些更科学的架构方式。
										<br> <br> 因此准确地说，layui
										更多是面向那些追求开发简单的前端工程师们，以及所有层次的服务端程序员。
									</p>
								</div>
							</div>
							<div class="layui-colla-item">
								<h2 class="layui-colla-title">贤心是男是女？</h2>
								<div class="layui-colla-content">
									<p>man！ 所以这个问题不要再出现了。。。</p>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</section>
	</div>
	<div></div>
	<!-- script -->
	<script src="${ctx}/public/bower_components/jquery/dist/jquery.min.js"></script>
	<script
		src="${ctx}/public/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="${ctx}/public/bower_components/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
	<script src="${ctx}/public/assets/js/main.js"></script>
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