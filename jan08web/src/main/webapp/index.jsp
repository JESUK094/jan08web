<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="./css/index.css" rel="stylesheet"/>
<link href="./css/menu.css" rel="stylesheet"/>
<script type="text/javascript" src="./js/menu.js"></script>
</head>
<body>
	<div class="container">
		<header>
			<!-- 먼저 내 파일(ex보드)를 가져오고난 후 자바 jsp를 실행시킬거야 -->
			<%@ include file="menu.jsp"%>
			<!-- 최종적으로 다 끝난 상태에서 가져와서 첨부하기 -->
			<!-- jsp:은 출력 결과만 화면에 나옵니다. -->
			
		</header>
		<div class="main">
			<div class="mainStyle">
				<article>
					<br>
					<h1>환영합니다. 안녕히 가세요. 들어오는 문과 나가는 문은 동일합니다.</h1>
					<img src="./img/문송.png" alt="문송의 이미지" width="700" height="500">
				
				</article>
			</div>
		</div>
		<footer> 
		<c:import url="footer.jsp"/>
		</footer>
	</div>
</body>
</html>