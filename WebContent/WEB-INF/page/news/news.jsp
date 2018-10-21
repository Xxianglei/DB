<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>今日头条</title>
<!-- 如果使用了导航条，需要移除所有导航条的折叠和展开行为。
	   对于栅格布局，额外增加 .col-xs-* 类或替换掉 .col-md-* 和 .col-lg-*。 不要担心，针
		对超小屏幕设备的栅格系统能够在所有分辨率的环境下展开。-->
<link href="${ctx}/public/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/public/css/newslist.css" rel="stylesheet">
<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
<link rel="stylesheet" href="${ctx}/public/layui/css/layui.css"
	media="all">

</head>
<body>
	<!-- 导航条 -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
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
								<a href="${ctx}/pro/center">个人中心</a>
							</dd>

							<dd>
								<a href="${ctx}/pro/logout">退出登录</a>
							</dd>
						</dl>
					</c:if> <c:if test="${ sessionScope.name==null }">
						<a href="${ctx}/pro/log_in">登录*注册 </a>


					</c:if></li>
			</ul>
		</div>
	</nav>
<script type="text/javascript">
//1. 创建xmlhttprequest 对象
var request = ajaxFunction();

//2. 发送请求
request.open("GET" ,"${ctx}/pro/get_news/" ,true );

//3. 获取响应数据 注册监听的意思。  一会准备的状态发生了改变，那么就执行 = 号右边的方法
request.onreadystatechange = function(){

    //前半段表示 已经能够正常处理。  再判断状态码是否是200
    if(request.readyState == 4 && request.status == 200){
        //弹出响应的信息
        alert(request.responseText);
    }
}
request.send();

</script>

	<!-- 主内容 -->
	<div class="container" >
		<div class="row" >
			<div class="col-xs-2">
				<div class="left-nav text-center">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation" class="active"><a href="${ctx}/pro/get_news/" onclick="get()"><span
								class="chose">推荐</span></a></li>
						<li role="presentation"><a href="#"><span class="list">热点</span></a></li>
						<li role="presentation"><a href="#"><span class="list">搞笑</span></a></li>
						<li role="presentation"><a href="#"><span class="list">科学</span></a></li>
						<li role="presentation"><a href="#"><span class="list">娱乐</span></a></li>
						<li role="presentation"><a href="#"><span class="list">游戏</span></a></li>
						<li role="presentation"><a href="#"><span class="list">动漫</span></a></li>
						<li role="presentation"><a href="#"><span class="list">美图</span></a></li>
						<li role="presentation"><a href="#"><span class="list">视频</span></a></li>
						<li role="presentation"><a href="#"><span class="list">更多</span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-xs-6">
				<div class="news">
					<table class="table table-striped">
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<tr>
							<td><div class="picture">
									<a href="#"><img src="img/sxc.jpg"></a>
								</div></td>
							<td>
								<div class="headline">
									<a href="#"><br>
										<p>普天同庆，抽象工作室倒闭了！！！臭鱼烂虾快滚吧。</p></a>
								</div>
								<div class="userId text-right">斗鱼新闻·500评论·1小时前</div>
							</td>
						</tr>
						<!-- 分页 -->

					</table>
				</div>
			</div>
			<div class="col-xs-4 newsright">
				<div class="panel panel-danger" style="height:350px;">

					<div class="panel-footer">猜你喜欢</div>
					<div class="panel-body">Panel footer</div>
				</div>
				<div class="panel panel-info" style="height:350px;">

					<div class="panel-footer">大家都在看</div>
					<div class="panel-body">Panel footer</div>
				</div>

			</div>
		</div>
	</div>

	<script src="${ctx}/public/js/jquery-3.2.1.min.js"></script>
	<script src="${ctx}/public/js/bootstrap.min.js"></script>
	<script src="${ctx}/public/scripts/main.js"></script>
	<script src="${ctx}/public/layui/layui.js" charset="utf-8"></script>
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