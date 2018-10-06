<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>添加人员</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${ctx}/public/css/font.css">
<link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/public/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<body>
	<div class="x-body">
		<form class="layui-form" method="POST" id="deptForm"
			action="${ctx}/stu/add2">

			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>姓名
				</label>
				<span></span>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>

			</div>
			<div />
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>学号
				</label>
				<div class="layui-input-inline">
					<input type="text" id="stu_num" name="stu_num" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>

			</div>
			<div />
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"><span></span> 昵称 </label>
				<div class="layui-input-inline">
					<input type="text" id="nick_name" name="nick_name" required=""
						autocomplete="off" class="layui-input">
				</div>

			</div>
			<div />
			<div class="layui-inline">
				<label class="layui-form-label"> <span class="x-red">*</span>专业
				</label>
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
			<div />
			<p>.</p>
			<div class="layui-inline">
				<label class="layui-form-label"><span></span> 等级</label>
				<div class="layui-input-inline">
					<select name="level" lay-verify="required" lay-search="">
						<option value="P 0">P 0</option>
						<option value="P 1">P 1</option>
						<option value="P 2">P 2</option>
						<option value="P 3">P 3</option>
						<option value="P 4">P 4</option>
						<option value="P 5">P 5</option>

					</select>
				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>性别
				</label>
				<div class="layui-input-block">
					<input type="radio" name="sex" value="男" title="男" checked="">
					<input type="radio" name="sex" value="女" title="女">

				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>邮箱
				</label>
				<div class="layui-input-inline">
					<input type="text" id="email" name="email" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>QQ
				</label>
				<div class="layui-input-inline">
					<input type="text" id="QQ" name="QQ" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>手机
				</label>
				<div class="layui-input-inline">
					<input type="text" id="phone" name="phone" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
			<div class="layui-inline">
				<label class="layui-form-label"> <span class="x-red">*</span>生日
				</label>
				<div class="layui-input-block">
					<input type="text" name="birthday" id="date1" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div />
				<p>.</p>
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"><span></span> 特长 </label>
				<div class="layui-input-inline">
					<input type="text" id="speciality" name="speciality" required=""
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
			<div class="layui-form-item" pane="">
				<label for="phone" class="layui-form-label"><span></span> 爱好 </label>
				<div class="layui-input-block">
					<input type="checkbox" name="hobby" lay-skin="primary" value="编程"
						title="编程" checked=""> <input type="checkbox" name="hobby"
						lay-skin="primary" value="阅读" title="阅读"> <input
						type="checkbox" name="hobby" lay-skin="primary" value="唱歌"
						title="唱歌"> <input type="checkbox" name="hobby"
						lay-skin="primary" value="跳舞" title="跳舞"> <input
						type="checkbox" name="hobby" lay-skin="primary" value="摄影"
						title="摄影"> <input type="checkbox" name="hobby"
						lay-skin="primary" value="旅行" title="旅行"> <input
						type="checkbox" name="hobby" lay-skin="primary" value="游戏"
						title="游戏">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"><span></span> 竞赛 </label>
				<div class="layui-input-inline">
					<input type="text" id="race" name="race" required=""
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>学生会
				</label>
				<div class="layui-input-block">
					<input type="radio" name="student_union" value="是" title="是"
						checked=""> <input type="radio" name="student_union"
						value="否" title="否">

				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>班干部
				</label>
				<div class="layui-input-block">
					<input type="radio" name="cadre" value="是" title="是" checked="">
					<input type="radio" name="cadre" value="否" title="否">

				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>考研
				</label>
				<div class="layui-input-block">
					<input type="radio" name="graduate_student" value="是" title="是"
						checked=""> <input type="radio" name="graduate_student"
						value="否" title="否">

				</div>
			</div>
			<div />
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>联系地址
				</label>
				<div class="layui-input-inline">
					<input type="text" id="address" name="address" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-inline">
				<label class="layui-form-label"> <span class="x-red">*</span>学习方向
				</label>
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
			<div />
				<p>.</p>
			<div class="layui-inline">
				<label class="layui-form-label"> <span class="x-red">*</span>工作室
				</label>
				<div class="layui-input-inline">
					<select name="space" lay-verify="required" lay-search="">
						<option value="数据库工作室">数据库工作室</option>

					</select>
				</div>
			</div>
				<p>.</p>
			<div />
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"><span></span> 期望薪资 </label>
				<div class="layui-input-inline">
					<input type="text" id="salary" name="salary" required=""
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
			<div class="layui-inline">
				<label class="layui-form-label"><span></span>创建时间</label>
				<div class="layui-input-inline">
					<input type="text" name="create_date" id="date" lay-verify="date"
						placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div />
				<p>.</p>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label"><span></span> 简述</label>
				<div class="layui-input-block">
					<textarea placeholder="请输入内容" class="layui-textarea" name="resume"></textarea>
				</div>
			</div>
			<div />
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label"><span></span>备注</label>
				<div class="layui-input-block">
					<textarea placeholder="请输入内容" class="layui-textarea" name="remark"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label> <input
					type="submit" value=" 提交" class="layui-btn" lay-filter="add"
					lay-submit="" />

			</div>
		</form>
	</div>
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

							//表单初始赋值
							form.val('example', {
								"username" : "贤心" // "name": "value"
								,
								"password" : "123456",
								"interest" : 1,
								"like[write]" : true //复选框选中状态
								,
								"close" : true //开关状态
								,
								"sex" : "女",
								"desc" : "我爱 layui"
							})

						});
	</script>

</body>

</html>