<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<title>数据库工作室</title>
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

<link
	href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">

<link rel="stylesheet" href="${ctx}/public/styles/main.css" />

<script src="${ctx}/public/layui/layui.js" charset="utf-8"></script>
</head>
<body>
	<div align="right">

		<ul class="layui-nav " style="height: 90px;">
			<div id="logo">DataBase</div>
			<li class="layui-nav-item"><a href="${ctx}/pro/database"><b>首页</b></a></li>
			<li class="layui-nav-item"><a href="${ctx}/pro/report"><b>公告</b></a></li>
			<li class="layui-nav-item"><a href="${ctx}/pro/news"><b>文章</b></a></li>
		
			<li class="layui-nav-item"><a href="${ctx}/pro/join_in" data-hover="加入我们">
					<b>加入我们</b>
			</a></li>
			<%-- <li class="layui-nav-item" lay-unselect=""><c:if
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
				</c:if></li> --%>
		</ul>
	</div>
	<!-- header -->
	<div class="col-sm-3 col-md-2 sidebar" style="background: #404040; color:#FFF;" >
		<div class="sidebar_top">
			<h1>${user.name}</h1>
			<img src="//t.cn/RCzsdCq" alt="头像" />
		</div>
		<div class="details">
			<h3>专业:</h3>
			<p>${user.major_id}</p>
			<h3>工作室</h3>
			<p>
				<a href="database">${user.space}</a>
			</p>

			<h3>学习方向</h3>
			<p>${user.job_id}</p>
			<h3>期望薪资</h3>
			<p>${user.salary}RMB</p>
			<h3>特长技术</h3>
			<p>${user.speciality}</p>
			<h3>个性签名</h3>
			<p>${user.resume}</p>


		</div>
		<div class="clearfix"></div>
	</div>
	<!---->

	<!---//pop-up-box---->
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="content">
			<div class="details_header">
				<ul>
					<li class="layui-icon"><a href="${ctx}/pro/center">&#xe63c;我的简历</a></li>
					<li class="layui-icon"><a href="${ctx}/pro/edit">&#xe60a;编辑简历</a></li>
					<li class="layui-icon"><a href="${ctx }/pro/mystudio">&#xe705;我的工作室
					</a></li>
					<li class="layui-icon"><a class="play-icon popup-with-zoom-anim"
						href="${ctx}/pro/edit_num1"> &#xe770;账号设置</a></li>
					<!-- <li><a class="play-icon popup-with-zoom-anim"
						href="#small-dialog"><span class="glyphicon glyphicon-picture"
							aria-hidden="true"></span>我的评估</a></li> -->
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
			<div class="company" >
				<h3 class="clr1" style="background: #404040; color:#FFF;" >Previous Employment</h3>
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
						<!-- University of Awesome<span>JANUARY 2004 - OCTOBER 2009 来源:<a
							href="http://www.mycodes.net/" target="_blank">源码之家</a></span> -->
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