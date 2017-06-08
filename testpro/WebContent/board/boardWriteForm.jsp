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

		<section>
		
		<form action="/testpro/.do" method="post">
				<h1>새 글 쓰기</h1>
				<div id="board_write_form">
					<input type="text" size="70" id="subject" name="subject"><br><p>
					<textarea rows="10" cols="70" id="content" name="content"></textarea><p>
					<div id="button">
						<input type="submit" value="등록">
						<input type="reset" value="취소">
					</div>
				</div>
		</form>
		
		</section>		

		<footer>
		    <p>footer</p>
        </footer>
	</div>
</body>
</html>