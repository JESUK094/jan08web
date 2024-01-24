<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/index.css" rel="stylesheet" />
<link href="./css/menu.css" rel="stylesheet" />
<script type="text/javascript" src="./js/menu.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>


<!-- 01.18 j쿼리, 마이크로소프트 버젼 가져옴 -->
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.1.min.js"></script>
<!-- 01.18 추가 -->
<style type="text/css">
.id-alert, .name-alert, .pw-alert {
	background-color: #9cb395;
}

.alert {
	color: #F4EBE7;
}
</style>


<!-- 나 jquery 쓸거라고 불러들이는 화면이 필요함, 이건 외워줘야함 -->
<script type="text/javascript">
	//제이쿼리 시작
	//$(선택자).할일();
	/*       alert("제이쿼리가 동작합니다")
	function check(){
	let id = $("#id").val();/* id(#)가 id 인 애를 찾아내서 값 뽑아낸다 */
	/*   alert(id + ":" + id.length() + "숫자검사 :" + isNaN(127));//NOT a Number, 숫자면 거짓, 문자면 참
	   return false;
	} */

	/*    $(document).ready(function()   {  문서 읽어올때 쓰는 것*/
	//글로벌 변수 0119
	let idCheckBool = false;

	$(function() {//제이쿼리 시작문 = 제이쿼리 시작합니다.
		$('.id-alert, .name-alert, .pw-alert').hide();/*숨겼다가*/

		//onchange()
		//$("#id").change(function(){
		//	alert("아이디입력창 값이 변경되었습니다.");
		//});
		$('#id').on("change keyup paste",function() {
					//alert("아이디입력창 값이 변경되었습니다.");
					$('.id-alert').show();/* 일어나 */
					$('.id-alert').html('<p class="alert">당신이 입력한 ID는 ' + $('#id').val() +  '</p>');
					if($('#id').val().length > 4){
						idCheck();
					}
				});
	});

	function check() {
		// $(선택자).할일();
		let id = $("#id").val();
		if (id.length < 5 || id == "") {
			$('.id-alert').show();/*보여줘*/
			$("#id").focus();/* 커서가 있는 곳 */
			return false;
		} else {
			$('.id-alert').hide();
		}
		if (!idCheckBool) {
			alert("ID 검사를 먼저 실행해주세요.");
			return false;
		}

		let name = $('#name').val();
		if (name.length < 3) {
			$('.name-alert').show();
			$('#name').focus();
			return false;
		}
		$('.name-alert').hide();

		let pw1 = $('#pw1').val();
		let pw2 = $('#pw2').val();
		if(pw1.length < 8){
			$('.pw-alert').show();
			$('#pw1').focus();
			return false;
		}
		if(pw2.length < 8){
			alert("암호는 8글자 이상이어야 합니다.");
			$('#pw2').focus();
			return false;
		}
		if(pw1 != pw2){
			alert("암호가 일치하지 않습니다.");
			$('#pw2').val("");
			$('#pw2').focus();
			return false;
		}
		$('.pw-alert').hide();
	}
	function idCheck(){
		//alert('id검사를 눌렀습니다');
		let id = $('#id').val();
		//const regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"\sㄱ-ㅎㅏ-ㅣ가-힣]/g;//한글+공백
		//alert(regExp.test(id)); // 한글,공백 포함여부 검사하는 정규식
		//나중에는 영어 소문자, 숫자만 들어오게 해주시면 감사하겠습니다. 
		const regExp = /^[a-z0-9]{5,15}$/;
		if (id.length < 5 || !regExp.test(id)) {
			//alert("아이디는 영문자 5글자 이상이고 특수문자가 없어야합니다.");
			$('.id-alert').html('<p class="alert">아이디는 영문자 5글자 이상이고 특수문자가 없어야합니다.</p>');
			$('#id').focus();
		} else {

			//AJAX = 어려운 순서 : 1페이징, 2 AJAX, 3 파일업로드 
			$.ajax({
				url : './idCheck',			//이동할 주소
				type : 'post',				//post / get
				dataType : 'text',			//수신 타입
				data : {'id' : id},			//보낼 값
				success : function(result){	//성공시
					//alert("통신에 성공했습니다");
					if(result == 1){
						//alert("이미 가입되어있습니다.");
						$('.id-alert').append('<p class="alert">이미 가입되어있습니다.</p>');
						idCheckBool = false;
						$("#joinBtn").attr("disabled", "disabled");//비활성화 시키기
						$('#id').focus();
					} else {
						//alert("가입할 수 있습니다. 다음을 계속 진행하세요.");
						$('.id-alert').append('<p class="alert">가입할 수 있습니다.</p>');
						$('.id-alert .alert').css("color","green");
						idCheckBool = true;
						$("#joinBtn").removeAttr("disabled");//비활성화 제거하기 = 활성화 시키기
						//$('#name').focus();
					}
				},
				error : function(request, status, error){//접속불가, 문제발생 등
					alert("문제가 발생했습니다");
				}
			});
		}
		return false;
	}
</script>

<!-- <script type="text/javascript">
	function checkId() {/* JavaScript로 작성 */
		var idValue = document.getElementById('id').value;
		if (idValue === '') {
			alert('ID를 입력해주세요.');
			return false;
		}
		return true;
	}
</script> -->
</head>


<body>
	<div class="container1">
		<header>
			<%@ include file="menu.jsp"%>
		</header>
		<div class="main">
			<div class="mainStyle">
				<article>
					<!-- 0117 회원가입 작성 -->
					<div class="join-form">
						<div class="mx-3 p-3 bg-light">

							<br>
							<h1>회원가입</h1>
							<form action="./join" method="post" onsubmit="return check()">
								<div class="input-group mb-2">
									<label class="input-group-text">아이디</label>
									<input type="text"  id="id" name="id" class="form-control" placeholder="아이디를 입력하세요">
									<button class="btn btn-success input-group-text" onclick="return idCheck()">ID검사</button>
								</div>
								<!-- 0118 추가 -->
									<div class="input-group mb-2 id-alert">
									<p class="alert">올바른 아이디를 입력하세요</p>
								</div>
								<div class="input-group mb-2">
									<label class="input-group-text">이&ensp;&ensp;름</label> <input
										type="text" id="name" name="name" class="form-control"
										placeholder="이름을 입력하세요">
								</div>
								<div class="input-group mb-2 name-alert">
									<p class="alert">올바른 이름을 입력하세요</p>
								</div>
								<div class="input-group mb-2">
									<label class="input-group-text">암&ensp;&ensp;호</label> <input
										type="password" id="pw1" name="pw1" class="form-control"
										placeholder="암호를 입력하세요"> <label
										class="input-group-text">재입력</label> <input type="password"
										id="pw2" name="pw2" class="form-control"
										placeholder="한번 더 입력하세요">
								</div>
								<div class="input-group mb-2 pw-alert">
									<p class="alert">암호는 8글자 이상입니다.</p>
								</div>
								<div class="input-group mb-2">
									<button type="reset" class="btn btn-Light">초기화</button>
									<!-- 0119작성 -->
									<button id="joinBtn" type="submit" disabled="disabled"
										class="btn btn-warning">가입하기</button>
								</div>
							</form>
						</div>
					</div>
				</article>
			</div>
		</div>

		<footer>
			<c:import url="footer.jsp" />
		</footer>
	</div>
</body>
</html>



