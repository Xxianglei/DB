 <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css" media="all">
<!-- css -->
<link rel="stylesheet" href="${ctx}/public/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
</head>

<body bgcolor="#FFFFFF">
	<div>
		<header>
			<div class="container">
				<div id="logo">
					<font color="#666666"> DataBase </font>
				</div>
				<nav>
					<ul>
						<li><a href="database.html"><b><font color="#666666">首页</font></b></a>
						</li>
						<li><a href="#recent"><b><font color="#666666">活动</font></b></a>
						</li>
						<li><a href="#"><b><font color="#666666">资源下载</font></b></a>
						</li>
						<li><a href="join_in.html" data-hover="联系"> <b><font
									color="#666666">加入我们</font></b></a></li>
						<li><a href="log_in.html"> <b><font color="#666666">登录*注册</font></b></a>
						</li>
					</ul>
				</nav>
		</header>
	</div>
	<div style="margin-top: 85px;">
		<hr />
	</div>
	<div class="container" style="width: 100%;">
		<section id="faq" class="section faq" style="margin-top: 100px;">
			<div class="container">
				<div class="nav breadcrumb">
					<a href="/">关于工作室</a> / <a href="">资源下载</a>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h3 class="section-title">资源下载</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading1">
									<h4 class="panel-title">
										<a class="faq-toggle collapsed" role="button"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapse1" aria-expanded="true"
											aria-controls="collapse1"> 系统镜像 </a>
									</h4>
								</div>

								<div id="collapse1" class="panel-collapse" role="tabpanel"
									aria-labelledby="heading1">
									<div class="panel-body">
										<h3>Windows 系列：</h3>
										<ul>
											<li><a href="#">Windows 10 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows 8[2016-10-24]</a></li>
											<li><a href="#">Windows 7 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows xp TH2[2016-10-24]</a></li>
										</ul>
										<h3>Linux 发行版：</h3>
										<ul>
											<li><a href="#">Windows 10 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows 8[2016-10-24]</a></li>
											<li><a href="#">Windows 7 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows xp TH2[2016-10-24]</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading2">
									<h4 class="panel-title">
										<a class="faq-toggle collapsed" role="button"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapse2" aria-expanded="true"
											aria-controls="collapse2"> 开发工具 </a>
									</h4>
								</div>

								<div id="collapse2" class="panel-collapse" role="tabpanel"
									aria-labelledby="heading2">
									<div class="panel-body">
										<ul>
											<li><a href="#">Windows 10 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows 8[2016-10-24]</a></li>
											<li><a href="#">Windows 7 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows xp TH2[2016-10-24]</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading3">
									<h4 class="panel-title">
										<a class="faq-toggle collapsed" role="button"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapse3" aria-expanded="true"
											aria-controls="collapse3"> 系统工具 </a>
									</h4>
								</div>

								<div id="collapse3" class="panel-collapse" role="tabpanel"
									aria-labelledby="heading3">
									<div class="panel-body">
										<ul>
											<li><a href="#">Windows 10 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows 8[2016-10-24]</a></li>
											<li><a href="#">Windows 7 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows xp TH2[2016-10-24]</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="heading4">
									<h4 class="panel-title">
										<a class="faq-toggle collapsed" role="button"
											data-toggle="collapse" data-parent="#accordion"
											href="#collapse4" aria-expanded="true"
											aria-controls="collapse4"> 办公软件 </a>
									</h4>
								</div>

								<div id="collapse4" class="panel-collapse" role="tabpanel"
									aria-labelledby="heading4">
									<div class="panel-body">
										<ul>
											<li><a href="#">Windows 10 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows 8[2016-10-24]</a></li>
											<li><a href="#">Windows 7 TH2[2016-10-24]</a></li>
											<li><a href="#">Windows xp TH2[2016-10-24]</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</div>
	<div>

		<footer class="site-footer">
			<div class="container" align="center">
				<div class="row">
					<div class="col-md-12">
						<div class="site-info">
							<p>
								©2018 <a href="index.html" target="_blank">数据库工作室提供技术支持</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- script -->
	<script src="${ctx}/public/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="${ctx}/public/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="${ctx}/public/bower_components/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
	<script src="${ctx}/public/assets/js/main.js"></script>
</body>

</html>