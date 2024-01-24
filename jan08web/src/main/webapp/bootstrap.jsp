<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>어서오시고</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li class="sidebar-brand"><a href="./board">보드</a></li>
			<li class="sidebar-nav-item"><a href="./qna">문의게시판</a></li>
			<li class="sidebar-nav-item"><a href="./notice">공지사항</a></li>
			<li class="sidebar-nav-item"><a href="./login">로그인</a></li>

		</ul>
	</nav>
<style>
   header.masthead {
      background-color: #F4EBE7; /* 원하는 배경색 코드로 변경하세요 */
      color: #5c6e56; /* 텍스트 색상도 조절할 수 있습니다 */
   }

   .btn-primary {
      background-color: #9cb395 ;/* 원하는 버튼 색상 코드로 변경하세요 */
      border-color: #9cb395; /* 버튼 테두리 색상도 동일하게 설정하세요 */
   }

   .btn-primary:hover {
      background-color: #F4EBE7; /* 버튼에 마우스를 올렸을 때의 색상 변경 */
      border-color: #F4EBE7;
      color : black;
   }
</style>
	
	<!-- Header-->
	<header class="masthead d-flex align-items-center">
		<div class="container px-4 px-lg-5 text-center">
			<h1 class="mb-1">어서오시고</h1>
			<h3 class="mb-5">
				<em>안녕히 가시게</em>
			</h3>
			<a class="btn btn-primary btn-xl" href="./board">board</a>
		</div>
	</header>
	<!-- About-->
	<section class="bg-warning">
    <!-- 여기에 섹션 내용 추가 -->
</section>

	<section>
	<div class="mt-4">
	</div>
	<div class="m-5 p-5 border-top border-bottom border-primary">
		<table class="table table-stripes">
			<thead>
				<tr>
					<th class="col-1">번호</th>
					<th class="col-6">제목</th>
					<th class="col-2">글쓴이</th>
					<th class="col-2">날짜</th>
					<th class="col-1">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="row">
					<tr>
						<td class="col-1">${row.no }</td>
						<td class="col-6"> ${row.title }</td>
						<td class="col-2">${row.write }</td>
						<td class="col-2">${row.date }</td>
						<td class="col-1">${row.count }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button type="button" class="btn btn-outline-primary">글쓰기</button>
</div>

	</section>
	<br>
	<div class="container bg-primary text-white">
	구역
		<div class="mb-5 mb-0 bg-secondary">구역2</div>
		<div class="mx-2 my-4 py-5 bg-success">구역3</div>
		<div class="mx-2 bg-danger w-25">구역4</div>
		<div class="mx-2 bg-warning w-50">구역5</div>
		<div class="mx-2 bg-success w-75">구역6</div>
</div>
	<!-- Map-->

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container px-4 px-lg-5">
			<ul class="list-inline mb-5">
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white mr-3" href="#!"><i
						class="icon-social-facebook"></i></a></li>
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white mr-3" href="#!"><i
						class="icon-social-twitter"></i></a></li>
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white" href="#!"><i
						class="icon-social-github"></i></a></li>
			</ul>
			<p class="text-muted small mb-0">Copyright &copy; Your Website
				2023</p>
		</div>
	</footer>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"><i
		class="fas fa-angle-up"></i></a>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
