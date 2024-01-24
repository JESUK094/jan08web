<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판</title>
<link href="./css/index.css" rel="stylesheet"/>
<link href="./css/menu.css" rel="stylesheet"/>
<script type="text/javascript" src="./js/menu.js"></script>
</head>
<body>
	<div class="container">
		<header>
			<%@ include file="menu.jsp"%>
			
		</header>
		<div class="main">
			<div class="mainStyle">
				<article>
					<h1>QnA</h1>
					<img src="./img/문의.png" alt="문의 이미지" width="300" height="300">
					<h2>무엇이든지 물어보세요.</h2>
					<ul>
						<li>궁금한건</li>
						<li>문희씨에게</li>
						<li>문의하세요</li>
					</ul>
				</article>
			</div>
		</div>
		<footer> 
		<c:import url="footer.jsp"/>
		</footer>
	</div>
</body>
</html>