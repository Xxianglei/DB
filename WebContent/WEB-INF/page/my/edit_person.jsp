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
			<li class="layui-nav-item"><a href="${ctx}/pro/news"><b>今日头条</b></a></li>
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
							<a href="center">个人中心</a>
						</dd>
					
						<dd>
							<a href="logout">退出登录</a>
						</dd>
					</dl>
				</c:if> <c:if test="${ sessionScope.name==null }">
					<a href="${ctx}/pro/log_in">登录*注册 </a>
				</c:if></li>
		</ul>
	</div>
	<!-- header -->
	<div class="col-sm-3 col-md-2 sidebar">
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
					<li><a href="${ctx}/pro/center"><span
							class="glyphicon glyphicon-file" aria-hidden="true"></span>我的简历</a></li>
					<li><a href="${ctx}/pro/edit"><span
							class="glyphicon glyphicon-print" aria-hidden="true"></span>编辑简历</a></li>
					<li><a href="${ctx}/pro/mystudio"><span
							class="glyphicon glyphicon-envelope" aria-hidden="true"></span>我的工作室</a></li>
					<li><a href="${ctx}/pro/edit_num1"> <span
							class="glyphicon glyphicon-file" aria-hidden="true"></span>账号设置
					</a></li>
					<li><a href="${ctx}/pro/analysis"><span
							class="glyphicon glyphicon-file" aria-hidden="true"></span>我的评估</a></li>
				</ul>
			</div>
			<div class="company">
				<h3 class="clr1">修改账号信息</h3>
				<div class="company_details">
					<h4>
						Edit Name <span>JUNE 2006 - SINCE</span>
					</h4>
					<form class="layui-form" action="${ctx}/pro/edit_num" lay-filter="example" id="editForm" 
						method="post">
						<div class="layui-form-item">
							<label class="layui-form-label" style="width: 100px;">账号昵称</label>
							<div class="layui-input-inline">
								<input type="text" name="name" lay-verify="title"
									autocomplete="off" placeholder="请输入昵称" class="layui-input">

							</div>
							<div class="layui-form-mid layui-word-aux">请务必填写用户名</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label" style="width: 100px;">修改密码</label>
							<div class="layui-input-inline">
								<input type="password" name="password" id="password"
									placeholder="请输入密码" autocomplete="off" class="layui-input"
									lay-verify="pass">
							</div>
							<div class="layui-form-mid layui-word-aux">请务必填写</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label" style="width: 100px;">确认密码</label>
							<div class="layui-input-inline">
								<input type="password" name="repassword" id="repassword"
									placeholder="请再次输入密码" autocomplete="off" class="layui-input"
									lay-verify="pass">
							</div>
							<div class="layui-form-mid layui-word-aux">请务必填写</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn" lay-submit="" lay-filter="demo1">立即修改</button>
							</div>
						</div>
						<span id="tishi">${msg}</span>
					</form>

					<p class="cmpny1"></p>
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


			<script>
				layui
						.use(
								[ 'form', 'layedit', 'laydate' ],
								function() {
									var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

									//创建一个编辑器
									var editIndex = layedit
											.build('LAY_demo_editor');

									//自定义验证规则
									form.verify({
										title : function(value) {
											if (value.length < 2) {
												return '昵称至少得2个字符';
											}
										},
										pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
										repass : function(value) {
											if ($('#password').val() != $(
													'#repassword').val()) {
												return '两次密码不一致';
											}
										}

									});
									 //监听提交
							          form.on('submit(demo1)', function(data){
							        	  
							            console.log(data);
							            //发异步
							            layer.alert("确认修改", {icon: 6},function () {
							            	document.getElementById('editForm').submit();
							                // 获得frame索引
							                var index = parent.layer.getFrameIndex(window.name);
							                //关闭当前frame
							                parent.layer.close(index);
							               
							            });
							            return false;
							          });
								
								});
			</script>
</body>
</html>