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

			<li class="layui-nav-item"><a href="${ctx}/pro/join_in"
				data-hover="加入我们"> <b>加入我们</b>
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
			<div class="">
				<div class="" style="width: 100%;">
					<form class="layui-form" method="POST" id="deptForm"
						action="${ctx}/pro/join_us">
						<table class="table table-bordered">
							<tbody>
								<tr align="center">
									<td>姓名:</td>
									<td>
										<div class="layui-input-inline">
											<input type="text" id="name" name="name" required=""
												lay-verify="required" autocomplete="off"
												value="${user.name}" class="layui-input">
										</div>
									</td>
									<td>性别:</td>
									<td>
										<div class="layui-form-item">

											<div class="layui-input-inline">
												<c:if test="${user.sex=='男'}">
													<input type="radio" name="sex" value="男" title="男"
														checked="">
													<input type="radio" name="sex" value="女" title="女">

												</c:if>
												<c:if test="${user.sex=='女'}">
													<input type="radio" name="sex" value="男" title="男">
													<input type="radio" name="sex" value="女" title="女"
														checked="">
												</c:if>


											</div>
										</div>
									</td>
									<td width="12%">出生日期:</td>
									<td>
										<div class="layui-inline">

											<div class="layui-input-inline">
												<input type="text" name="birthday" id="date1"
													autocomplete="off" class="layui-input"
													value="${user.birthday}">
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
													class="layui-input" value="${user.stu_num}">
											</div>

										</div>
									</td>
									<td>手机:</td>
									<td>
										<div class="layui-item">

											<div class="layui-input-inline">
												<input type="text" id="phone" name="phone" required=""
													lay-verify="required" autocomplete="off"
													class="layui-input" value="${user.phone}">
											</div>
										</div>
									</td>
									<td>QQ:</td>
									<td>
										<div class="layui-item">

											<div class="layui-input-inline">
												<input type="text" id="QQ" name="QQ" required=""
													lay-verify="required" autocomplete="off"
													class="layui-input" value="${user.qq_num}">
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
													<c:if test="${user.major_id eq '计算机科学与技术'}">
														<option value="计算机科学与技术" checked="">计算机科学与技术</option>
														<option value="数字媒体与技术">数字媒体与技术</option>
														<option value="软件工程">软件工程</option>
														<option value="网络工程">网络工程</option>
														<option value="计算机科学与技术(人工智能)">计算机科学与技术(人工智能)</option>
													</c:if>
													<c:if test="${user.major_id eq '数字媒体与技术' }">
														<option value="计算机科学与技术">计算机科学与技术</option>
														<option value="数字媒体与技术" checked="">数字媒体与技术</option>
														<option value="软件工程">软件工程</option>
														<option value="网络工程">网络工程</option>
														<option value="计算机科学与技术(人工智能)">计算机科学与技术(人工智能)</option>
													</c:if>
													<c:if test="${user.major_id eq '软件工程' }">
														<option value="计算机科学与技术">计算机科学与技术</option>
														<option value="数字媒体与技术">数字媒体与技术</option>
														<option value="软件工程" checked="">软件工程</option>
														<option value="网络工程">网络工程</option>
														<option value="计算机科学与技术(人工智能)">计算机科学与技术(人工智能)</option>
													</c:if>
													<c:if test="${user.major_id eq '网络工程' }">
														<option value="计算机科学与技术">计算机科学与技术</option>
														<option value="数字媒体与技术">数字媒体与技术</option>
														<option value="软件工程">软件工程</option>
														<option value="网络工程" checked="">网络工程</option>
														<option value="计算机科学与技术(人工智能)">计算机科学与技术(人工智能)</option>
													</c:if>
													<c:if test="${user.major_id eq '计算机科学与技术(人工智能)' }">
														<option value="计算机科学与技术">计算机科学与技术</option>
														<option value="数字媒体与技术">数字媒体与技术</option>
														<option value="软件工程">软件工程</option>
														<option value="网络工程">网络工程</option>
														<option value="计算机科学与技术(人工智能)" checked="">计算机科学与技术(人工智能)</option>
													</c:if>
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
												<c:if test="${user.student_union=='是' }">
													<input type="radio" name="student_union" value="是"
														title="是" checked="">
													<input type="radio" name="student_union" value="否"
														title="否">
												</c:if>
												<c:if test="${user.student_union=='否' }">
													<input type="radio" name="student_union" value="是"
														title="是">
													<input type="radio" name="student_union" value="否"
														title="否" checked="">
												</c:if>


											</div>
									</td>
									<td>班干部:</td>
									<td>
										<div class="layui-form-item">

											<div class="layui-input-inline">
												<c:if test="${user.cadre=='是'}">
													<input type="radio" name="cadre" value="是" title="是"
														checked="">
													<input type="radio" name="cadre" value="否" title="否">
												</c:if>
												<c:if test="${user.cadre=='否'}">
													<input type="radio" name="cadre" value="是" title="是">
													<input type="radio" name="cadre" value="否" title="否"
														checked="">
												</c:if>

											</div>
										</div>
									</td>
									<td>考研:</td>
									<td>
										<div class="layui-form-item">

											<div class="layui-input-inline">
												<div>
													<c:if test="${user.graduate_student=='是' }">
														<input type="radio" name="graduate_student" value="是"
															title="是" checked="">
														<input type="radio" name="graduate_student" value="否"
															title="否">
													</c:if>
													<c:if test="${user.graduate_student=='否' }">
														<input type="radio" name="graduate_student" value="是"
															title="是">
														<input type="radio" name="graduate_student" value="否"
															title="否" checked="">
													</c:if>
												</div>
											</div>
										</div>
										<div />
									</td>
									<td>
										<div class="layui-upload">
											<button type="button" class="layui-btn" id="test1">上传图片(图片名须为学号)</button>
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
													type="checkbox" name="hobby" lay-skin="primary" value="阅读"
													title="阅读"> <input type="checkbox" name="hobby"
													lay-skin="primary" value="唱歌" title="唱歌"> <input
													type="checkbox" name="hobby" lay-skin="primary" value="跳舞"
													title="跳舞"> <input type="checkbox" name="hobby"
													lay-skin="primary" value="摄影" title="摄影"> <input
													type="checkbox" name="hobby" lay-skin="primary" value="旅行"
													title="旅行"> <input type="checkbox" name="hobby"
													lay-skin="primary" value="游戏" title="游戏">
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
													autocomplete="off" class="layui-input" value="${user.race}">
											</div>
										</div>
									</td>
									<td>地址:</td>
									<td colspan="4">
										<div class="layui-form-item">

											<div class="layui-input-block">
												<input type="text" id="address" name="address" required=""
													lay-verify="required" autocomplete="off"
													class="layui-input" value="${user.address}">
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
													autocomplete="off" class="layui-input"
													value="${user.salary}">
											</div>
										</div>
									</td>
									<td width="12%">申请时间:</td>
									<td colspan="4">
										<div class="layui-inline">

											<div class="layui-input-inline">
												<input type="text" name="create_date" id="date"
													lay-verify="date" placeholder="yyyy-MM-dd"
													autocomplete="off" class="layui-input"
													value="${user.create_date}">
											</div>
										</div>
									</td>

								</tr>
								<tr align="center">
									<td>简述</td>
									<td colspan="20" rowspan="5">

										<div class="layui-form-item layui-form-text">

											<div class="layui-input-block" align="left">
												<c:if test="${user.resume!=null}">
													<textarea rows="15" placeholder="${user.resume} "
														class="layui-textarea" name="resume"></textarea>
												</c:if>
												<c:if test="${user.resume==null}">
													<textarea rows="15"
														placeholder="自我评价评述：（包括自我简介、获奖情况、申请理由，以及对以上表格信息的补充）"
														class="layui-textarea" name="resume"></textarea>
												</c:if>
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
									<td colspan="7"><font color="red">${requestScope.msg}</font>
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

					</form>
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
									form

									.verify({
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
										layer.alert(JSON.stringify(data.field),
												{
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
												url : 'http://localhost:8080/people/pro/upload/?tag=1',
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
														return layer
																.msg('上传失败');
													}
													//上传成功
												},
												error : function() {
													//演示失败状态，并实现重传
													var demoText = $('#demoText');
													demoText
															.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
													demoText
															.find(
																	'.demo-reload')
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
</body>
</html>