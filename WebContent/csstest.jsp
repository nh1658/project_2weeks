<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>css연습</title>

<style type="text/css">
/*============================== 기본  ==============================/

@1 컬러
#2B3137  짙은남색(메인) , 
#fff 	흰색(글씨) ,
#009999  청록색,
#ff0000   빨간색
#e6e6e6  연한 회색(푸터)

@2 전체
#container {
	width: 80%;
	padding: 5%;
	border-style: solid;
	border-width: 5px;
}

@3 부트스트랩 
<link rel="stylesheet"
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

/============================= 기본  끝============================== */
#container {
	width: 80%;
	padding: 5%;
	border-style: solid;
	border-width: 5px;
}

/*-------------------------- 헤더(#header) --------------------------*/

 /*@1 #header : main/loginM/homeimg/signIU/menubarLink/menuLink/submenu/*/
#header{
width:96%;
height : 20%;
background-color : #2B3137;
}
.header-text {
	font-size: 32px;
	color: white;
	text-align: center;
	line-height: 120px;
}

  /*@2    .main: loginM+homeIcon+signIU /*/
.loginM{
	padding: 20px;
	margin: 20px;
	
/*background-color: white; 위치확인, 지워도됨*/
}

.loginM a:hover {
	color: #009999;
/* 홈아이콘, signIn, signUp 등에 마우스 올렸을때 색 변화*/
	text-decoration: none;
/* 밑줄 삭제*/
}

.homeIcon{
	float: left;
/* 홈 아이콘 왼쪽으로 정렬*/	
}

.signIU {
	float: right;
/* 검색창, 검색아이콘,signIn,singUp 오른족 정렬*/	
}

  /* @3   #Meme : .menubarLink + .menuLink + .submenu/*/
.menubarLink{
	color:#fff;
	padding-left: 0px;
	width: 100%;
	font-weight: bold;
	text-align: center;
}

.menubarLink .menuLink{
	float: left;
	width:25%;
	list-style: none;
	line-height: 40px;
	font-size: 12px;
	font-family: "돋움";
	background-color:#2B3137;
}

.menubarLink:hover .submenu {
	display: inline;
	
}

.menuLink:hover { 
	color: white;
	background: #099;
}

.submenu {
	background: #099;		
	display: none;
	padding-left: 0px;
	list-style: none;
}
.subLink {
	color: #fff;		
	display: block;
}
.subLink:hover{
	text-decoration: none;
	background-color: #f1f1f1;
}
/*------------------------- 헤더(#header)끝 -------------------------*/
</style>

</head>
<body>
	<div id="container">
		<div id="header">
		<h1 class="header-text">메인(homeMain.jsp)</h1>
			<div class="main">
				<div class="loginM">
					<div class="homeIcom">
						<a href="#"><span
							class="glyphicon glyphicon-education"></span></a>
					</div>
					<div class="signIU">
						<a href="homeMain.jsp">HOME</a>&nbsp;&nbsp; <a href="">MYPAGE</a>&nbsp;&nbsp;
						<input type="text"> <a href="#"><span
							class="glyphicon glyphicon-search"></span></a> &nbsp;&nbsp; <a
							href="homeSignUp.jsp">SIGN IN</a>&nbsp;&nbsp; <a href="homeSignin.jsp">SIGN UP</a>
					</div>
				</div>
			</div>
		
			<div id="Meme">
				<!--  메뉴바 -->
				<ul class="menubarLink">
					<li class="menuLink">스포츠
						<ul class="submenu">
							<li><a class="subLink">스포츠1</a></li>
							<li><a class="subLink">스포츠2</a></li>
							<li><a class="subLink">스포츠3</a></li>
						</ul>
					</li>

					<li class="menuLink">게임
						<ul class="submenu">
							<li><a class="subLink">게임1</a></li>
							<li><a class="subLink">게임2</a></li>
							<li><a class="subLink">게임3</a></li>
						</ul>
					</li>

					<li class="menuLink">취업
						<ul class="submenu">
							<li><a class="subLink">이력서 작성</a></li>
							<li><a class="subLink">이력서 수정</a></li>
							<li><a class="subLink">이력서 공유하기</a></li>
						</ul>
					</li>

					<li class="menuLink">뷰티
						<ul class="submenu">
							<li><a class="subLink">뷰티1</a></li>
							<li><a class="subLink">뷰티2</a></li>
							<li><a class="subLink">뷰티3</a></li>
						</ul>
					</li>


				</ul>

			</div>
			<!-- 메뉴바끝 -->
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>