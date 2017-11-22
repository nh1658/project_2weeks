<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>

<body>
	<div id="container">
		<div id="header">
			<h1 class="header-text">로그인(homeSignin.jsp)</h1>

<div class="main">
				<div class="loginM">
					<div class="homeimg">
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
		<div id="content_In">
			<!-- 컨텐트 -->

			<div id="content">
				<div class="form_all">
					<div class="page_menutitle_In">로그인</div>
					<form name="logon" id="logon" action="#"
						method="post">
						<table>
							<tr>
								<td class="form_th">아이디</td>
								<td><input class="form_input" type="text" name="id" id="id"
									size="45" maxlength="20"></td>
							</tr>
							<tr>
								<td class="form_th">비밀번호</td>
								<td><input class="form_input" type="password" name="pass"
									id="pass" size="45" maxlength="20"></td>
							</tr>
						</table>
						<div class="button_div">
							<input type="submit" value="로그인" class="button_type1"
								onclick="#'" /> <input
								type="reset" value="취소" class="button_type1">
						</div>
					</form>
				</div>
<br><br><br><br><br><br><br><br><br><br><br>
			</div>
		</div>
		<div id="footer">
			<p>진짜 왜 안되는지 모르겠다.. 뭐가 불만인거니 css 고수님 만나고싶다...</p>
		</div>


	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
</body>
</html>