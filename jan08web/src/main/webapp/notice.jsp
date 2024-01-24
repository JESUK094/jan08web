<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
					
				<img src="./img/오늘.png" alt="오늘 이미지" width="300" height="300">
					<h1>오늘은 김치찌개.</h1>
					<h2>문희씨.</h2>
					<ul>
						<li>문희씨 10번 부르기</li>
						<li>문희씨 초콜렛 버리기</li>
						<li>문희씨 자는거 안깨우기</li>
						<li>문희씨가 하는 말 듣고 무시하기</li>
						<li>문희씨 시어머니에요? 5번 묻기</li>
						<li>문희씨 못뛰게 하기</li>
						<li>문희씨는 깔끔이라는 단어의 뜻을 모르는 것 같아요</li>
					</ul>
				</article>
				<article>
					<h2>초록언니.</h2>
					<ul>
						<li>있잖아요.</li>
						<li>초록언니는</li>
						<li>자아가 너무 많아요.</li>
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