<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>员工列表</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="${ctx}/public/logo.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="${ctx}/public/css/font.css">
<link rel="stylesheet" href="${ctx}/public/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript" src="${ctx}/public/js/xadmin.js"></script>

<link rel="stylesheet" href="${ctx }/public/lib/layui/css/layui.css"
	media="all">
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>

<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a> <cite>人员列表</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="${ctx }/stu/list" title="刷新"> <i class="layui-icon"
			style="line-height: 30px">ဂ</i></a>
	</div>

	<div class="x-body">
		<div class="layui-row" style="" align="center">
			<form class="layui-form layui-col-md12 x-so" method="get" action="#">
				<%-- "${ctx }/stu/findall" --%>
				<!-- <input class="layui-input" placeholder="开始日" name="start" id="start">
          <input class="layui-input" placeholder="截止日" name="end" id="end"> -->
				<input type="text" name="content" style="width: 50%;"
					placeholder="请输入查找内容" autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>

		<!--  -->
		<div class="layui-btn-group demoTable">
			<button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
			<button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
			<button class="layui-btn" data-type="isAll">验证是否全选</button>
		</div>

		<table class="layui-table"
			lay-data="{ height:'full-200', url:'http://localhost:8080/people/stu/findall', page:true, id:'idTest'  }"
			lay-filter="demo">
			<thead>
				<tr>
					<th lay-data="{type:'checkbox', fixed: 'left'}"></th>
					<th lay-data="{field:'id', width:80 ,sort: true, fixed: true}">ID</th>
					<th lay-data="{field:'name', width:80}">用户名</th>
					<th lay-data="{field:'level', , width:80 sort: true}">等级</th>
					<th lay-data="{field:'sex',sort: true,width:80}">性别</th>
					<th lay-data="{field:'major_id',sort: true}">专业</th>
					<th lay-data="{field:'job_id', sort: true}">学习方向</th>
					<th lay-data="{field:'speciality',sort: true}">特长</th>
					<th lay-data="{field:'space',sort: true}">工作室</th>
					<th lay-data="{field:'race',  sort: true}">竞赛</th>
					<th lay-data="{field:'resume'}">简介</th>
					<th lay-data="{field:'remark', width:80}">备注</th>
					<th
						lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}">操作</th>
				</tr>
			</thead>
		</table>
		<!--  -->
		<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail"  >查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit"  >编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"  >删除</a>

</script>
		<script src="${ctx }/public/lib/layui/layui.js" charset="utf-8"></script>
		<script>
			layui
					.use(
							'table',
							function() {
								var table = layui.table;
								//监听表格复选框选择
								table.on('checkbox(demo)', function(obj) {
									console.log(obj)
								});
								//监听工具条
								table.on('tool(demo)', function(obj) {
									var data = obj.data;
									if (obj.event === 'detail') {
										layer.msg('ID：' + data.id+'<br>'+
												'姓名：' + data.name+'<br>'+
												'学号：' + data.stu_num+'<br>'+
												'昵称：' + data.nick_name+'<br>'+
												'专业：' + data.major_id+'<br>'+
												'等级：' + data.level+'<br>'+
												'性别：' + data.sex+'<br>'+
												'Email：' + data.email+'<br>'+
												'QQ：' + data.qq_num+'<br>'+
												'手机：' + data.phone+'<br>'+
												'生日：' + data.birthday+'<br>'+
												'专长：' + data.speciality+'<br>'+
												'爱好：' + data.hobby+'<br>'+
												'竞赛：' + data.race+'<br>'+
												'学生会：' + data.student_union+'<br>'+
												'班干部：' + data.cadre+'<br>'+
												'考研：' + data.graduate_student+'<br>'+
												'联系地址：' + data.address+'<br>'+
												'学习方向：' + data.job_id+'<br>'+
												'工作室：' + data.space+'<br>'+
												'期望薪资：' + data.salary+'<br>'+
												'创建时间：' + data.create_date+'<br>'+
												'简述：' + data.resume+'<br>'+
												'备注：' + data.remark+'<br>'
												
										);
									} else if (obj.event === 'del') {
										layer.confirm('真的删除行么',
												function(index) {
											location.href="${ctx }/stu/del?data="+data.id;
													obj.del();
													
													layer.close(index);
												});
									} else if (obj.event === 'edit') {
										location.href="${ctx }/stu/edit?data="+data.id+"&tag=1";
									/* 	layer.alert('编辑行：<br>'
												
												+ JSON.stringify(data)) */
									}
								});

								var $ = layui.$, active = {
									getCheckData : function() { //获取选中数据
										var checkStatus = table
												.checkStatus('idTest'), data = checkStatus.data;
										layer.alert(JSON.stringify(data));
									},
									getCheckLength : function() { //获取选中数目
										var checkStatus = table
												.checkStatus('idTest'), data = checkStatus.data;
										layer.msg('选中了：' + data.length + ' 个');
									},
									isAll : function() { //验证是否全选
										var checkStatus = table
												.checkStatus('idTest');
										layer.msg(checkStatus.isAll ? '全选'
												: '未全选')
									}
								};

								$('.demoTable .layui-btn').on(
										'click',
										function() {
											var type = $(this).data('type');
											active[type] ? active[type]
													.call(this) : '';
										});
							});
		</script>
</body>

</html>