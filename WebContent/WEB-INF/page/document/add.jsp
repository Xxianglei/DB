<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>数据库工作室</title>
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
	<div class="x-body">
		<div class="layui-upload">
			<div class="layui-upload-list">
				<table class="layui-table">
					<thead>
						<tr>
							<th>文件名</th>
							<th>大小</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="demoList"></tbody>
				</table>
			</div>
			<div align="right">
				<button type="button" class="layui-btn" id="testListAction">开始上传</button>
				<button type="button" class="layui-btn layui-btn-normal" id="testList">选择多文件</button>
			</div>

		</div>
	</div>


	<script>
		layui
				.use(
						'upload',
						function() {
							var $ = layui.jquery, upload = layui.upload;
							//多文件列表示例
							var demoListView = $('#demoList'), uploadListIns = upload
									.render({
										elem : '#testList',
										url : 'http://localhost:8080/people/document/upload/',
										accept : 'file',
										multiple : true,
										auto : false,
										bindAction : '#testListAction',
										choose : function(obj) {
											var files = this.files = obj
													.pushFile(); //将每次选择的文件追加到文件队列
											//读取本地文件
											obj
													.preview(function(index,
															file, result) {
														var tr = $([
																'<tr id="upload-'+ index +'">',
																'<td>'
																		+ file.name
																		+ '</td>',
																'<td>'
																		+ (file.size / 1014)
																				.toFixed(1)
																		+ 'kb</td>',
																'<td>等待上传</td>',
																'<td>',
																'<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>',
																'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>',
																'</td>',
																'</tr>' ]
																.join(''));

														//单个重传
														tr
																.find(
																		'.demo-reload')
																.on(
																		'click',
																		function() {
																			obj
																					.upload(
																							index,
																							file);
																		});

														//删除
														tr
																.find(
																		'.demo-delete')
																.on(
																		'click',
																		function() {
																			delete files[index]; //删除对应的文件
																			tr
																					.remove();
																			uploadListIns.config.elem
																					.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
																		});

														demoListView.append(tr);
													});
										},
										done : function(res, index, upload) {
											if (res.code == 0) { //上传成功
												var tr = demoListView
														.find('tr#upload-'
																+ index), tds = tr
														.children();
												tds
														.eq(2)
														.html(
																'<span style="color: #5FB878;">上传成功</span>');
												tds.eq(3).html(''); //清空操作
												return delete this.files[index]; //删除文件队列已经上传成功的文件
											}
											this.error(index, upload);
										},
										error : function(index, upload) {
											var tr = demoListView
													.find('tr#upload-' + index), tds = tr
													.children();
											tds
													.eq(2)
													.html(
															'<span style="color: #FF5722;">上传失败</span>');
											tds.eq(3).find('.demo-reload')
													.removeClass('layui-hide'); //显示重传
										}
									});

						});
	</script>
</body>

</html>