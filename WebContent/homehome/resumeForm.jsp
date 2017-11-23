<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이력서(resumeForm.jsp)</title>
<link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>
	<div id="container">
		<!-- container -->
		<div id="header">

			<h1 class="header-text">이력서작성(resumeForm.jsp)</h1>
			<div class="main">
				<div class="loginM">
					<div class="homeIcon">
						<a href="#"><span class="glyphicon glyphicon-education"></span></a>
					</div>
					<div class="signIU">
						<a href="homeMain.jsp">HOME</a>&nbsp;&nbsp; <a href="">MYPAGE</a>&nbsp;&nbsp;
						<input type="text"> <a href="#"><span
							class="glyphicon glyphicon-search"></span></a> &nbsp;&nbsp; <a
							href="homeSignIn.jsp">SIGN IN</a>&nbsp;&nbsp; <a href="homeSignUp.jsp">SIGN UP</a>
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

		<div id="contentRe">
			<div class="form_all">
				<div class="page_menutitle">이력서 작성</div>
				<form name="join" id="join" action="#" method="post">
					<table align=center border=1>

						<tr>
							<td class="form_th"> 인적사항 </td>

							<td class="form_th" colspan="2">한글 이름</td>
							<td colspan="2"><input class="form_input" type="text"
								size=20></td>
							<td class="form_th" colspan="2">영문 이름</td>
							<td colspan="2"><input class="form_input" type="text"
								size=20></td>

						</tr>
						<tr>
							<td class="form_th" rowspan="4">사진</td>
							<td class="form_th" colspan="2">주 소</td>
							<td colspan="8"><input class="form_input" type="text"
								size=40></td>

						</tr>

						<tr>
							<td class="form_th" colspan="2">본 적</td>
							<td colspan="8"><input class="form_input" type="text"
								size=40></td>
						</tr>
						<tr>
							<td class="form_th" rowspan="2">전화번호</td>
							<td class="form_th">자택</td>
							<td colspan="3"><input class="form_input" type="text"></td>
							<td class="form_th">긴급연락처</td>
							<td colspan="3"><input class="form_input" type="text"></td>
						</tr>
						<tr>
							<td class="form_th">휴대폰</td>
							<td colspan="3"><input class="form_input" type="text"></td>
							<td class="form_th">Email</td>
							<td colspan="3"><input class="form_input" type="text"></td>
						</tr>

						<tr>
							<td class="form_th">자기소개</td>

							<td colspan="10"><textarea id="intro" name="intro" rows="30"
									cols="90" style="overflow-x: hidden;"></textarea></td>
						</tr>
					</table>
					
					
					<div class="button_div">
						<input type="submit" value="저장" class="button_type1"> <input
							type="reset" value="다시 작성" class="button_type1">
					</div>


				</form>
			</div>


		</div>

		<div id="footer">
			<p>2017-11-20 이력서작성 폼</p>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>