<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>

		<div id="container">
			<!-- container -->
			<div id="header">
				<h1 class="header-text">회원가입(homeSignUp.jsp)</h1>
				<div class="main">
				<div class="loginM">
					<div class="homeIcon">
						<a href="#"><span
							class="glyphicon glyphicon-education"></span></a>
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

			<div id="content_Up">
				<!-- 컨텐트 -->
	<div class="form_all">
			<div class="page_menutitle_Up">회원가입</div>
			<form name="join" id="join" action="#" method="post">
				<table>
					<tr>
						<td class="form_th">아이디</td>
						<td><input class="form_input" type="text" name="id" id="id"
							size="20" maxlength="20"> <input class="button_type1"
							type="button" id="idcheck" name="confirm_id" value="ID중복확인">
						</td>
					</tr>
					<tr>
						<td class="form_th">비밀번호</td>
						<td><input class="form_input" type="password" name="pass"
							id="pass" size="20" maxlength="20"></td>
					</tr>
					<tr>
						<td class="form_th">비밀번호 확인</td>
						<td><input class="form_input" type="password" id="pass2"
							size="20" maxlength="20"></td>
					</tr>
					<tr>
						<td class="form_th">이름(실명)</td>
						<td><input class="form_input" type="text" name="name"
							id="name" size="20" maxlength="20"></td>
					</tr>
					<tr>
						<td class="form_th">핸드폰</td>
						<td><select name="phone1" id="phone1">
								<option>선택</option>
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>018</option>
						</select> - <input class="form_input" type="text" id="phone2" name="phone2"
							size="4" maxlength="4" /> - <input class="form_input"
							type="text" id="phone3" name="phone3" size="4" maxlength="4" />
						</td>
					</tr>
					<tr>
						<td class="form_th">이메일</td>
						<td><input class="form_input" id="email" type="text"
							name="email" size="30" maxlength="30" /></td>
					</tr>
					<tr>
						<td class="form_th">주소</td>
						<td><input class="form_input" type="text"
							id="sample6_postcode" name="zonecode" placeholder="우편번호">
							<input class="button_type1" type="button"
							onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input class="form_input" type="text" id="sample6_address"
							name="address1" size="50" maxlength="50" placeholder="주소">
							<input class="form_input" type="text" id="sample6_address2"
							name="address2" size="30" maxlength="30" placeholder="상세주소">
						</td>
					</tr>
				</table>
				<div class="button_div">
					<input type="submit" value="가입" class="button_type1"> 
					 <input type="reset" value="다시 작성" class="button_type1">
				</div>
				
				
			</form>
		</div>
	</div>
	
	<div id="footer">
			<p> 이걸 언제 다 처리한담 ... 마음만 급해졌어...........</p>
		</div>
			</div>


	
		
		
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
</body>
</html>