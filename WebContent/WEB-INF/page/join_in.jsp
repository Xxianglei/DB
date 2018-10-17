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
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">

</head>

<body bgcolor="#FFFFFF">
	<div align="right"  >
			
			<ul class="layui-nav" style="height:90px;">
					<div id="logo">
					DataBase
				</div>
				<li  class="layui-nav-item">
					<a href="${ctx}/pro/database"><b>首页</b></a>
				</li>
				<li  class="layui-nav-item">
					<a href="${ctx}/pro/report"><b>公告</b></a>
				</li>
				<li  class="layui-nav-item">
					<a href="${ctx}/pro/download"><b>资源下载</b></a>
				</li>
				<li  class="layui-nav-item">
					<a href="${ctx}/pro/join_in" data-hover="加入我们"> <b>加入我们</b></a>
				</li>
				<li class="layui-nav-item" lay-unselect="">
										 <c:if test="${ sessionScope.name!=null }">
<img src="//t.cn/RCzsdCq" class="layui-nav-img">
${ sessionScope.name }<dl class="layui-nav-child">
						<dd>
							<a href="${ctx}/pro/center">个人中心</a>
						</dd>
						<dd>
							<a href="${ctx}/pro/center_edit">修改信息</a>
						</dd>
						<dd>
							<a href="${ctx}/pro/logout">退出登录</a>
						</dd>
					</dl> </c:if>
					  <c:if test="${ sessionScope.name==null }"><a href="${ctx}/pro/log_in">登录*注册	</a> </c:if>
				
					
				</li>
			</ul>
		</div>
		<div style="	margin-top: 25px;">
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

							<h1>
								<font face="楷体"> WELCOME TO JOIN US</font>
							</h1>

							<br /> <br /> <br /> <br /> <br />

							<p>......</p>
							<br />
							<p>
								<a class="btn btn-primary btn-lg" href="#" role="button">欢迎加入数据库工作室</a>
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
							<br />
							<br />
							
							<br />
							<p>
								<a class="btn btn-primary btn-lg" href="#" role="button">欢迎加入数据库工作室</a>
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
								<a class="btn btn-primary btn-lg" href="#" role="button">欢迎加入数据库工作室</a>
							</p>
							<br />
						</div>

					</div>
				</div>

			</div>

		</div>

		<div
			style="margin-top: 50px; position: absolute margin-left:100px; height: 1150px; width: 80%;"
			class="container">
			<div class="panel panel-default" style="height: 1110px">
				<div class="panel-body">
					<br /> <br />
					<div align="center">
						<h2>数据库工作室</h2>
					</div>
					<div class="container">
						<form class="layui-form" method="POST" id="deptForm"
							action="${ctx}/pro/join_us">

							<div class="layui-form">

								<table class="layui-table">
									<colgroup>
										<col width="10%">
										<col width="10%">
										<col width="10%">
										<col width="10%">
										<col width="10%">
										<col width="10%">

										<col width="15%">
										<col>
									</colgroup>
									<thead>
										<tr>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
											<th></th>
											<th></th>

										</tr>
									</thead>
									<tbody>
										<tr align="center">
											<td>姓名:</td>
											<td>
												<div class="layui-input-inline">
													<input type="text" id="name" name="name" required=""
														lay-verify="required" autocomplete="off"
														class="layui-input">
												</div>
											</td>
											<td>性别:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<input type="radio" name="sex" value="男" title="男"
															checked=""> <input type="radio" name="sex"
															value="女" title="女">

													</div>
												</div>
											</td>
											<td width="12%">出生日期:</td>
											<td>
												<div class="layui-inline">

													<div class="layui-input-inline">
														<input type="text" name="birthday" id="date1"
															autocomplete="off" class="layui-input">
													</div>
												</div>
											<td rowspan="3"><img class="layui-upload-img" id="demo1">
												<p id="demoText"></p></td>
										</tr>
										<tr align="center">
											<td>学号:</td>
											<td>
												<div class="layui-item">

													<div class="layui-input-inline">
														<input type="text" id="stu_num" name="stu_num" required=""
															lay-verify="required" autocomplete="off"
															class="layui-input">
													</div>

												</div>
											</td>
											<td>手机:</td>
											<td>
												<div class="layui-item">

													<div class="layui-input-inline">
														<input type="text" id="phone" name="phone" required=""
															lay-verify="required" autocomplete="off"
															class="layui-input">
													</div>
												</div>
											</td>
											<td>QQ:</td>
											<td>
												<div class="layui-item">

													<div class="layui-input-inline">
														<input type="text" id="QQ" name="QQ" required=""
															lay-verify="required" autocomplete="off"
															class="layui-input">
													</div>
												</div>
											</td>

										</tr>
										<tr align="center">
											<td>专业:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<select name="major" lay-verify="required" lay-search="">
															<option value="计算机科学与技术">计算机科学与技术</option>
															<option value="数字媒体与技术">数字媒体与技术</option>
															<option value="软件工程">软件工程</option>
															<option value="网络工程">网络工程</option>
															<option value="计算机科学与技术(人工智能)">计算机科学与技术(人工智能)</option>
														</select>
													</div>
												</div>
											</td>
											<td>方向:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<select name="job" lay-verify="required" lay-search="">
															<option value="安卓开发">安卓开发</option>
															<option value="大数据开发">大数据开发</option>
															<option value="数据挖掘">数据挖掘</option>
															<option value="JavaWeb开发">JavaWeb开发</option>
															<option value="Python全栈开发">Python全栈开发</option>
														</select>
													</div>
												</div>
											</td>
											<td>工作室:</td>
											<td>
												<div class="layui-form-item">
													<div class="layui-input-inline">
														<select name="space" lay-verify="required" lay-search="">
															<option value="数据库工作室">数据库工作室</option>

														</select>
													</div>
												</div>
											</td>

										</tr>

										<tr align="center">
											<td>学生会:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<input type="radio" name="student_union" value="是"
															title="是"> <input type="radio"
															name="student_union" value="否" title="否" checked="">

													</div>
											</td>
											<td>班干部:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<input type="radio" name="cadre" value="是" title="是">
														<input type="radio" name="cadre" value="否" title="否"
															checked="">

													</div>
												</div>
											</td>
											<td>考研:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<div>
															<input type="radio" name="graduate_student" value="是"
																title="是"> <input type="radio"
																name="graduate_student" value="否" title="否" checked="">
														</div>
													</div>
												</div>
												<div />
											</td>
											<td>
												<div class="layui-upload">
													<button type="button" class="layui-btn" id="test1">上传图片(图片须为学号)</button>
													<div class="layui-upload-list"></div>
												</div>
											</td>

										</tr>
										<tr align="center">
											<td>爱好:</td>
											<td colspan="6">
												<div class="layui-form-item">

													<div class="layui-input-block">
														<input type="checkbox" name="hobby" lay-skin="primary"
															value="编程" title="编程" checked=""> <input
															type="checkbox" name="hobby" lay-skin="primary"
															value="阅读" title="阅读"> <input type="checkbox"
															name="hobby" lay-skin="primary" value="唱歌" title="唱歌">
														<input type="checkbox" name="hobby" lay-skin="primary"
															value="跳舞" title="跳舞"> <input type="checkbox"
															name="hobby" lay-skin="primary" value="摄影" title="摄影">
														<input type="checkbox" name="hobby" lay-skin="primary"
															value="旅行" title="旅行"> <input type="checkbox"
															name="hobby" lay-skin="primary" value="游戏" title="游戏">
													</div>
												</div>
											</td>
										</tr>
										<tr align="center">
											<td>竞赛:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<input type="text" id="race" name="race" required=""
															autocomplete="off" class="layui-input">
													</div>
												</div>
											</td>
											<td>地址:</td>
											<td colspan="4">
												<div class="layui-form-item">

													<div class="layui-input-block">
														<input type="text" id="address" name="address" required=""
															lay-verify="required" autocomplete="off"
															class="layui-input">
													</div>
												</div>
											</td>

										</tr>
										<tr align="center">

											<td width="12%">期望薪资:</td>
											<td>
												<div class="layui-form-item">

													<div class="layui-input-inline">
														<input type="text" id="salary" name="salary" required=""
															autocomplete="off" class="layui-input">
													</div>
												</div>
											</td>
											<td width="12%">申请时间:</td>
											<td colspan="4">
												<div class="layui-inline">

													<div class="layui-input-inline">
														<input type="text" name="create_date" id="date"
															lay-verify="date" placeholder="yyyy-MM-dd"
															autocomplete="off" class="layui-input">
													</div>
												</div>
											</td>

										</tr>
										<tr align="center">

											<td>简述</td>
											<td colspan="20" rowspan="5">

												<div class="layui-form-item layui-form-text">

													<div class="layui-input-block" align="left">
														<textarea rows="15"
															placeholder="自我评价评述：（包括自我简介、获奖情况、申请理由，以及对以上表格信息的补充）"
															class="layui-textarea" name="resume"></textarea>
													</div>
												</div>
											</td>
										</tr>
										<tr></tr>
										<tr></tr>
										<tr></tr>
										<tr></tr>
										<tr></tr>
										<tr></tr>
										<br />
										<br />
										<br />
										<tr align="center">
										<td colspan="7">
										   <font color="red">${requestScope.msg}</font>
										</td>
										</tr>
										<tr align="center">

											<td colspan="7" rowspan="5">
												<div class="layui-form-item">
													<label for="L_repass" class="layui-form-label"> </label>
													<button class="layui-btn" lay-submit="" lay-filter="demo2">发送</button>
												</div>
											</td>

										</tr>
										

									</tbody>
								</table>

							</div>
						</form>
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
								var editIndex = layedit
										.build('LAY_demo_editor');

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
								form
										.on(
												'switch(switchTest)',
												function(data) {
													layer
															.msg(
																	'开关checked：'
																			+ (this.checked ? 'true'
																					: 'false'),
																	{
																		offset : '6px'
																	});
													layer
															.tips(
																	'温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF',
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
												obj.preview(function(index,
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
												demoText
														.find('.demo-reload')
														.on(
																'click',
																function() {
																	uploadInst
																			.upload();
																});
											}
										});

							});
		</script>
		<script>
layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script>
		<div>

			<footer class="site-footer">
				<div class="container" align="center">
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
		</div>
</body>

</html>