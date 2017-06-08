<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>writeForm</title>
<link rel="stylesheet" type="text/css" href="/testpro/css/style.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/testpro/css/script.js"></script>


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
					<li id="login-box"><a href="/">로그인</a></li>
				</ul>
			</nav>
		</header>
		
		<!--section  -->
		<section>

			<form action="/testpro/BoardAddAction.do" method="post">
				<h1>회원가입</h1>
				아이디: <input type="text" id="id" name="id"><br>
				비밀번호: <input type="password" id="passwd" name="passwd"><br>
				이메일: <input type="text" id="email" name="email"><br>
				이름: <input type="text" id="name" name="name"><br>
				닉네임: <input type="text" id="nickname" name="nickname"><br>
				전화번호: <input type="text" id="phone" name="phone"><br>
				<p>
				<input type="submit" value="회원가입">
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