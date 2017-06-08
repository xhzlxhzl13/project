<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<link rel="stylesheet" type="text/css" href="/testpro/css/style.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/testpro/css/script.js"></script>
</head>
<body>
	<div id="container">
		<header>
			<nav>
				<ul id="main-nav">
					<li><a href="/testpro/board/index.jsp">Main</a></li>
					<li>|</li>
					<li><a href="#">MenuBar1</a></li>
					<li><a href="#">MenuBar2</a></li>
					<li><a href="#">MenuBar3</a></li>
					<li><a href="#">MenuBar4</a></li>
					<c:if test="${id==null}">
						<li id="login-box"><a href="writeForm.jsp">회원가입</a></li>
						<li id="login-box"><a href="loginForm.jsp">로그인</a></li>
						
					</c:if>
					<c:if test="${id != null }">
						<li id="login-box"><a href="/testpro/Logout.do">로그아웃</a></li>
						<li id="login-box"><a href="/testpro/MemberFind.do">${id}</a> 님</li>
					</c:if>
				</ul>
			</nav>
		</header>
		
		<!--section1  -->
		<section>

			<form action="/testpro/MemberUpdate.do" method="post">
				<h1>회원정보 관리</h1>
				아이디: <input type="text" id="id" name="id" value="${id}" readOnly><br>
				이메일: <input type="text" id="email" name="email" value="${dto.email}"><br>
				이름: <input type="text" id="name" name="name" value="${dto.name}"><br>
				닉네임: <input type="text" id="nickname" name="nickname" value="${dto.nickname}"><br>
				전화번호: <input type="text" id="phone" name="phone" value="${dto.phone}"><br>
				<p>
				비밀번호 확인: <input type="password" id="passwd" name="passwd">
				<p>
				<input type="submit" value="회원정보 수정">
				<input type="reset" value="다시작성"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</form>
			<form>
				<input type="button" value="계정삭제">
			</form>	
				
		</section>
		
		<footer>
		    <p>footer</p>
        </footer>
	</div>
</body>
</html>