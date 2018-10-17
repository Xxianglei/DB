<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<title>Curriculum Vitae a Personal Category Flat Bootstarp
	Responsive Website Template | Home :: w3layouts</title>
<link href="${ctx}/public/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="${ctx}/public/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="${ctx}/public/css/dashboard.css" rel="stylesheet">
<link href="${ctx}/public/css/css/style.css" rel='stylesheet'
	type='text/css' />

<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Curriculum Vitae Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>
<link
	href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">

<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
<script src="${ctx}/public/js/jquery.magnific-popup.js"
	type="text/javascript"></script>
<script src="${ctx}/public/layui/layui.js" charset="utf-8"></script>
</head>
<body>
	<div align="right">
         
		<ul class="layui-nav " style="height: 90px;">
			<div id="logo">DataBase</div>
			<li class="layui-nav-item"><a href="database"><b>首页</b></a></li>
			<li class="layui-nav-item"><a href="report"><b>公告</b></a></li>
			<li class="layui-nav-item"><a href="download"><b>资源下载</b></a></li>
			<li class="layui-nav-item"><a href="join_in" data-hover="加入我们">
					<b>加入我们</b>
			</a></li>
			<li class="layui-nav-item" lay-unselect=""><c:if
					test="${ sessionScope.name!=null }">
					<img src="//t.cn/RCzsdCq" class="layui-nav-img">
${ sessionScope.name } 
<dl class="layui-nav-child">
						<dd>
							<a href="center">个人中心</a>
						</dd>
						<dd>
							<a href="center_edit">修改信息</a>
						</dd>
						<dd>
							<a href="logout">退出登录</a>
						</dd>
					</dl>
				</c:if> <c:if test="${ sessionScope.name==null }">
					<a href="log_in">登录*注册 </a>
				</c:if></li>
		</ul>
	</div>
	<!-- header -->
	<div class="col-sm-3 col-md-2 sidebar">
		<div class="sidebar_top">
			<h1>${user.name}</h1>
			<img src="${ctx}/public/images/avt.png" alt="头像" />
		</div>
		<div class="details">
			<h3>专业:</h3>
			<p>软件工程</p>
			<h3>工作室</h3>
			<p>
				<a href="database">数据库工作室</a>
			</p>

			<h3>学习方向</h3>
			<p>大数据开发</p>
			<h3>期望薪资</h3>
			<p>8000rmb</p>
			<h3>特长技术</h3>
			<p>JAVA</p>
			<h3>个性签名</h3>
			<p>我是一个牛人</p>


		</div>
		<div class="clearfix"></div>
	</div>
	<!---->

	<!---//pop-up-box---->
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="content">
			<div class="details_header">
				<ul>
					<li><a href="index.html"><span
							class="glyphicon glyphicon-file" aria-hidden="true"></span>我的简历</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-print"
							aria-hidden="true"></span>编辑简历</a></li>
					<li><a href="contact.html"><span
							class="glyphicon glyphicon-envelope" aria-hidden="true"></span>我的工作室
					</a></li>
					<li><a class="play-icon popup-with-zoom-anim"
						href="#small-dialog"><span class="glyphicon glyphicon-picture"
							aria-hidden="true"></span>账号设置</a></li>
<li><a class="play-icon popup-with-zoom-anim"
						href="#small-dialog"><span class="glyphicon glyphicon-picture"
							aria-hidden="true"></span>我的评估</a></li>
					<script>
						$(document).ready(function() {
							$('.popup-with-zoom-anim').magnificPopup({
								type : 'inline',
								fixedContentPos : false,
								fixedBgPos : true,
								overflowY : 'auto',
								closeBtnInside : true,
								preloader : false,
								midClick : true,
								removalDelay : 300,
								mainClass : 'my-mfp-zoom-in'
							});

						});
					</script>
				</ul>
			</div>
			<div class="company">
				<h3 class="clr1">Previous Employment</h3>
				<div class="company_details">
					<h4>
						Company Name <span>JUNE 2009 - PRESENT</span>
					</h4>
					<h6>WEB DESIGNER</h6>
					<p class="cmpny1">Nulla volutpat at est sed ultricies. In ac
						sem consequat, posuere nulla varius, molestie lorem. Duis quis
						nibh leo. Curabitur a quam eu mi convallis auctor nec id mauris.
						Nullam mattis turpis eu turpis tincidunt, et pellentesque leo
						imperdiet. Vivamus malesuada, sem laoreet dictum pulvinar, orci
						lectus rhoncus sapien, ut consectetur augue nibh in neque. In
						tincidunt sed enim et tincidunt.</p>
				</div>
				<div class="company_details">
					<h4>
						Company Name <span>NOVEMBER 2007 - MAY 2009</span>
					</h4>
					<h6>WEB DESIGNER</h6>
					<p>Nulla volutpat at est sed ultricies. In ac sem consequat,
						posuere nulla varius, molestie lorem. Duis quis nibh leo.
						Curabitur a quam eu mi convallis auctor nec id mauris. Nullam
						mattis turpis eu turpis tincidunt, et pellentesque leo imperdiet.
						Vivamus malesuada, sem laoreet dictum pulvinar, orci lectus
						rhoncus sapien, ut consectetur augue nibh in neque. In tincidunt
						sed enim et tincidunt.</p>
				</div>
			</div>
			<div class="skills">
				<h3 class="clr2">Professional skills</h3>
				<div class="skill_info">
					<p>Duis egestas tortor metus, vitae venenatis tortor tristique
						at. Pellentesque dignissim purus vitae enim blandit, sed tristique
						enim malesuada. Maecenas dolor erat, volutpat a tellus eu, euismod
						iaculis urna. Nulla dui purus, viverra viverra dolor non,
						malesuada dictum purus.</p>
				</div>
				<div class="skill_list">
					<div class="skill1">
						<h4>Software</h4>
						<ul>
							<li>Photoshop</li>
							<li>Flash</li>
							<li>Dreemweeaver</li>
							<li>In Design</li>
						</ul>
					</div>
					<div class="skill2">
						<h4>Languages</h4>
						<ul>
							<li>HTML/CSS</li>
							<li>ActionScript</li>
							<li>PHP</li>
							<li>Ruby on Rais</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="education">
				<h3 class="clr3">Education</h3>
				<div class="education_details">
					<h4>
						University of Awesome<span>JANUARY 2004 - OCTOBER 2009 来源:<a
							href="http://www.mycodes.net/" target="_blank">源码之家</a></span>
					</h4>
					<h6>MAJOR PHD</h6>
					<p class="cmpny1">Nulla volutpat at est sed ultricies. In ac
						sem consequat, posuere nulla varius, molestie lorem. Duis quis
						nibh leo. Curabitur a quam eu mi convallis auctor nec id mauris.
						Nullam mattis turpis eu turpis tincidunt, et pellentesque leo
						imperdiet. Vivamus malesuada, sem laoreet dictum pulvinar, orci
						lectus rhoncus sapien, ut consectetur augue nibh in neque. In
						tincidunt sed enim et tincidunt.</p>
				</div>

			</div>

		</div>
	</div>
	<footer class="site-footer">
		<div class="container" align="center" style="width: 100%;">
			<div class="row">
				<div class="col-md-12">
					<div class="site-info">
						<p>
							©2018 <a href="database.html" target="_blank">数据库工作室提供技术支持</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!---->
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