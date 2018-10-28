<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>

<head>
<meta charset="utf-8" />
<meta name="author" content="数据库工作室,北华大学" />
<meta name="description" content="北华大学数据库工作室官方网站" />
<meta name="keywords" content="北华大学，数据库工作室" />
<meta name="renderer" content="webkit" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>数据库工作室</title>
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
<link rel="stylesheet" href="${ctx}/public/css/bootstrap.min.css" />
<link rel="icon" href="${ctx}/public/images/ico.jpg" />
<!--需要引入JQuery-->
<script type="text/javascript" src="${ctx}/public/js/jquery-1.11.0.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script type="text/javascript" src="${ctx}/public/js/bootstrap.js"></script>
<script src="${ctx}/public/layui/layui.js" charset="utf-8"></script>
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">

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

			<li class="layui-nav-item"><a href="${ctx}/pro/join_in"
				data-hover="加入我们"> <b>加入我们</b></a></li>
			<%-- <li class="layui-nav-item" lay-unselect=""><c:if
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
					<a href="${ctx}/pro/log_in">登录 </a>
				</c:if></li> --%>
		</ul>
	</div>
	<div style="margin-top: 25px;">
		<hr />
	</div>
	<div class="" style="margin-top: 45px; width: 100%;" align="center">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel" align="center">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${ctx}/public/images/bg10.jpg" alt="..." width="100%">
					<div class="carousel-caption">
						<div class="carousel-caption">

						
								<h1>WELCOME TO JOIN US</h1>
							

							<br /> 

							<p>......</p>
							<br /> <br /> <br />
							<p>
								<a class="btn btn-primary btn-lg" href="${ctx}/public/document/报名表.doc" role="button" download="报名表">报名表下载</a>
							</p>
							<br /> <br /> <br />
						</div>
					</div>
				</div>
				<div class="item">
					<img src="${ctx}/public/images/bg9.jpg" alt="..." width="100%">
					<div class="carousel-caption">
						<div class="carousel-caption">


							<h1>WELCOME TO JOIN US</h1>

							<br />
							<p>......</p>
							<br /> <br /> <br />
							<p>
								<a class="btn btn-primary btn-lg" href="${ctx}/public/document/报名表.doc" role="button" download="报名表">报名表下载</a>
							</p>
							<br />
						</div>

					</div>
				</div>
				<div class="item">
					<img src="${ctx}/public/images/bg8.jpg" alt="..." width="100%">
					<div class="carousel-caption">
						<div class="carousel-caption">

							<br /> <br />
							<h2>WELCOME TO JOIN US</h2>

							<p>......</p>
							<br />
							<p>
								<a class="btn btn-primary btn-lg" href="${ctx}/public/document/报名表.doc" role="button" download="报名表">报名表下载</a>
							</p>
							<br />
						</div>

					</div>
				</div>

			</div>

		</div>

	</div>


	<script src="${ctx}/public/layui/layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//日期
							laydate.render({
								elem : '#date'
							});
							laydate.render({
								elem : '#date1'
							});

							//创建一个编辑器
							var editIndex = layedit.build('LAY_demo_editor');

							//自定义验证规则
							form.verify({
								title : function(value) {
									if (value.length < 5) {
										return '标题至少得5个字符啊';
									}
								},
								pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
								content : function(value) {
									layedit.sync(editIndex);
								}
							});

							//监听指定开关
							form.on('switch(switchTest)', function(data) {
								layer.msg('开关checked：'
										+ (this.checked ? 'true' : 'false'), {
									offset : '6px'
								});
								layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF',
										data.othis)
							});

							//监听提交
							form.on('submit(demo1)', function(data) {
								layer.alert(JSON.stringify(data.field), {
									title : '最终的提交信息'
								})
								return false;
							});

							/*//表单初始赋值
							form.val('example', {
							"username": "贤心" // "name": "value"
								,
							"password": "123456",
							"interest": 1,
							"like[write]": true //复选框选中状态
								,
							"close": true //开关状态
								,
							"sex": "女",
							"desc": "我爱 layui"
							})
							 */
						});
	</script>

	<script>
		layui
				.use(
						'upload',
						function() {
							var $ = layui.jquery, upload = layui.upload;

							//普通图片上传
							var uploadInst = upload
									.render({
										elem : '#test1',
										url : 'http://localhost:8080/people/pro/upload/',
										before : function(obj) {
											//预读本地文件示例，不支持ie8
											obj
													.preview(function(index,
															file, result) {
														$('#demo1').attr('src',
																result); //图片链接（base64）
													});
										},
										done : function(res) {
											//如果上传失败
											if (res.code > 0) {
												return layer.msg('上传失败');
											}
											//上传成功
										},
										error : function() {
											//演示失败状态，并实现重传
											var demoText = $('#demoText');
											demoText
													.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
											demoText.find('.demo-reload').on(
													'click', function() {
														uploadInst.upload();
													});
										}
									});

						});
	</script>
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
	<div></div>
</body>

</html>