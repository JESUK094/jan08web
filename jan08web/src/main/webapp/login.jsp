<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="./css/index.css" rel="stylesheet" />
<link href="./css/menu.css" rel="stylesheet" />
<script type="text/javascript" src="./js/menu.js"></script>
<style type="text/css">

.login {
	
	margin: 0 auto;
	width: 500px;
	min-height: 400px;
	transform: translate;
	background-color: #F4EBE7;
	/* #F8C8C4 카네이션핑크 */
	padding: 10px;
	box-sizing: border-box;
	text-align: center;
	color: #F69B94;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;

}

.background{
	background-color: #F4EBE7; /* 실제 배경 색상 */
    width: 100%; /* 가로 전체를 채우도록 설정 */
    height: 100%; /* 세로 전체를 채우도록 설정 */
    position: absolute; /* 절대 위치로 설정 */
    top: 0;
    left: 0;
    z-index: -1; /* 로그인 폼 위에 배치하기 위한 설정 */
}

.login input {
	width: 100%;
	height: 40px;
	text-align: center;
	box-sizing: border-box;
	border: 0.5px solid green;
	margin-bottom: 0.5rem;
}
.login input :hover {
	background-color: #9cb395;
}

.login button {
	width: 100%;
	padding: 0.5rem;
	background: #9cb395;
	color: #F69B94;
	border: none;
	font-size: large;
}

</style>

<script type="text/javascript">
function err(){
	let errBox = document.querySelector("#errorMSG");
	errBox.innerText = "다시 생각해보자. 너는 정답을 알고있어.";
	errBox.style.color = 'green';
	errBox.style.fontSize = '15px';
}
</script>
</head>
<body>
	<div class="container">
	<!-- <div id="wrap" class="wrap"> -->
			<header>
			<%@ include file="menu.jsp"%>
			</header>
			<div class="main">
				<div class="mainStyle">
						<article>
						<div class="background"></div>
						<div class="login">
							<form action="./login" method="post">
								<h1>로그인 <img src = "./img/집에어쩌구.png" style="width: 400px; height: 400px;"></h1>
								<c:if test="=${param.error ne null}">
									<script type="text/javascript">
							//alert("올바른 암호와 아이디를 입력하세요.")
							</script>
								</c:if>
								<input type="text" name="id" placeholder="아이디를 입력하세요"> 
								<input type="password" name="pw" placeholder="암호를 입력하세요">
								<button type="submit">LOGIN</button>
								<div id="errorMSG"></div>
							</form>
							<br>
							<a href="./join">회원가입할래?</a>
						</div>
					</article>
			</div>
		</div>
		<footer> 
		<c:import url="footer.jsp"/>
		</footer>
	</div>
	<c:if test="${param.error ne null }">
		<script type="text/javascript">
		err();
		</script>
	</c:if>
</body>

</html>