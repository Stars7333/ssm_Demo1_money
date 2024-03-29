<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 经费管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css"/>
</head>
<body class="login_bg">
    <section class="loginBox">
        <header class="loginHeader">
            <h1>经费管理系统</h1>
        </header>
        <section class="loginCont">
	        <form class="loginForm" action="${pageContext.request.contextPath}/doLogin.html"  name="actionForm" id="actionForm"  method="post" >
				<div class="info">${error}</div>
				<div class="inputbox">
                    <label for="u_name">用户名：</label>
					<input type="text" class="input-text" id="u_name" name="u_name" placeholder="请输入用户名" required/>
				</div>	
				<div class="inputbox">
                    <label for="u_pwd">密码：</label>
                    <input type="password" id="u_pwd" name="u_pwd" placeholder="请输入密码" required/>
                </div>	
				<div class="subBtn">
                    <input type="submit" value="登录"/>
                    <input type="reset" value="重置"/>
                </div>	
			</form>
        </section>
    </section>
</body>
</html>
