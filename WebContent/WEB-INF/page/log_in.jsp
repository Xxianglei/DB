<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>数据库工作室</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script type="text/javascript" src="${ctx}/public/js/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/js/login.js"></script>
		<link href="${ctx}/public/css/login2.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${ctx}/public/styles/main.css" />
			
	</head>

	<body>
		<header>
			<div class="container">
				<div id="logo">
					DataBase
				</div>
				<nav>
					<ul>
						<li>
							<a href="welcomedb"><b>首页</b></a>
						</li>
						<li>
							<a href="report"><b>公告</b></a>
						</li>
						<li>
							<a href="download"><b>资源下载</b></a>
						</li>
						<li>
							<a href="join_in" data-hover="加入我们"> <b>加入我们</b></a>
						</li>
						<li>
							<a href="login"> <b>登录*注册</b></a>
						</li>
					</ul>
				</nav>
		</header>
		<br />
	
		<h1  style="margin-top:100px;" align="center">WELCOME  TO  DATABASE</sup></h1>
		<br />
		<br />
		<h2 align="center"><font color="#EFEFEF">Code Changes the World</sup></font></h2>
		<div class="login" style="margin-top:50px;">

			<div class="header">
				<div class="switch" id="switch">
					<a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
					<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a>
					<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
				</div>
			</div>

			<div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">

				<!--登录-->
				<div class="web_login" id="web_login">

					<div class="login-box">

						<div class="login_form">
							<form action="${ctx}/Ulog_in" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post"><input type="hidden" name="did" value="0" />
								<input type="hidden" name="to" value="log" />
								<div class="uinArea" id="uinArea">
								<div align="center"><font color="red">${requestScope.msg}</font> </div>
									<label class="input-tips" for="u" > <font size="2">帐号：</font></label>
									<div class="inputOuter" id="uArea">

										<input type="text" id="u" name="username" class="inputstyle" />
									</div>
								</div>
								<div class="pwdArea" id="pwdArea">
									<label class="input-tips" for="p"><font size="2">密码：</font></label>
									<div class="inputOuter" id="pArea">

										<input type="password" id="p" name="password" class="inputstyle" />
									</div>
								</div>

								<div style="padding-left:50px;margin-top:20px;"><input type="submit" value="登 录" style="width:150px;" class="button_blue" /></div>
							</form>
						</div>

					</div>

				</div>
				<!--登录end-->
			</div>

			<!--注册-->
			<div class="qlogin" id="qlogin" style="display: none; ">

				<div class="web_login">
					<form name="form2" id="regUser" accept-charset="utf-8" action="" method="post">
						<input type="hidden" name="to" value="reg" />
						<input type="hidden" name="did" value="0" />
						<ul class="reg_form" id="reg-ul">
							<div id="userCue" class="cue">请注意格式</div>
							<li>

								<label for="user" class="input-tips2"><font size="2">用户名：</font></label>
								<div class="inputOuter2">
									<input type="text" id="user" name="user" maxlength="16" class="inputstyle2" />
								</div>

							</li>

							<li>
								<label for="passwd" class="input-tips2"><font size="2">密码：</font></label>
								<div class="inputOuter2">
									<input type="password" id="passwd" name="passwd" maxlength="16" class="inputstyle2" />
								</div>

							</li>
							<li>
								<label for="passwd2" class="input-tips2"><font size="2">确认密码：</font></label>
								<div class="inputOuter2">
									<input type="password" id="passwd2" name="" maxlength="16" class="inputstyle2" />
								</div>

							</li>

							<li>
								<label for="email" class="input-tips2"><font size="2">邮箱：</font></label>
								<div class="inputOuter2">

									<input type="text" id="email" name="email" maxlength="20" class="inputstyle2" />
								</div>

							</li>

							<li>
								<div class="inputArea">
									<input type="button" id="reg" style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册" />
								
								</div>

							</li>
							<div class="cl"></div>
						</ul>
					</form>

				</div>

			</div>
			<!--注册end-->
		</div>
		<div class="jianyi" align="bottom" style="
    margin-bottom: 20px;
    margin-top: 120px;
">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>

	</body>

</html>