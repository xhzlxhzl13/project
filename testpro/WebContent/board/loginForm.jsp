<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>writeForm</title>
<link rel="stylesheet" type="text/css" href="/testpro/css/style.css" />
</head>
<body>
	<div id="container">
	
		<!--header  -->
		<header>
			<nav>
				<ul id="main-nav">
					<li><a href="/testpro/board/index.jsp">Main</a></li>
					<li>|</li>
					<li><a href="#">MenuBar1</a></li>
					<li><a href="#">MenuBar2</a></li>
					<li><a href="#">MenuBar3</a></li>
					<li><a href="#">MenuBar4</a></li>
					<li id="login-box"><a href="writeForm.jsp">회원가입</a></li>
					<li id="login-box"><a href="loginForm.jsp">로그인</a></li>
				</ul>
			</nav>
		</header>
		
		<!--section  -->
		<section>

			<form action="/testpro/BoardLogin.do" method="post">
				<h1>로그인</h1>
				아이디: <input type="text" id="id" name="id"><br>
				비밀번호: <input type="password" id="passwd" name="passwd"><br>
				
				<input type="hidden" id="email" name="email">
				<input type="hidden" id="name" name="name">
				<input type="hidden" id="nickname" name="nickname">
				<input type="hidden" id="phone" name="phone">
				
				<p>
				<input type="submit" value="로그인">
				<input type="reset" value="다시작성">
			</form>
			
		</section>
		
		<!--footer  -->
		<footer>
		    <p>footer</p>
        </footer>
	</div>
</body>
</html>