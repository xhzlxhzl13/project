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
					<li><a href="./board_menu1.jsp">MenuBar1</a></li>
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
		
		<section id="MenuBar1">
			<div class="page-title">
				<h1>MenuBar1</h1>
			</div>
			<div class="content">
				<p>글목록</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
			</div>
		</section>
		
		<section id="MenuBar2">
			<div class="page-title">
				<h1>MenuBar2</h1>
			</div>
			<div class="content">
				<p>글목록</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
			</div>
		</section>
		
		<section id="MenuBar3">
			<div class="page-title">
				<h1>MenuBar3</h1>
			</div>
			<div class="content">
				<p>글목록</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
			</div>
		</section>
		
		<section id="MenuBar4">
			<div class="page-title">
				<h1>MenuBar4</h1>
			</div>
			<div class="content">
				<p>글목록</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
				<p>----------------------------------</p>
			</div>
		</section>
		
		<footer>
		    <p>footer</p>
        </footer>
	</div>
</body>
</html>