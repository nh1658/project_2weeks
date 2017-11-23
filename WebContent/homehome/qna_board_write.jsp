<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>MVC 게시판</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="qna_home.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">


<script>
	$(document)
			.ready(
					function() {

						//Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.

						//****************이부분은 DB로 셋팅하세요.
						//Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
						var mainCategoryArray = new Array();
						var mainCategoryObject = new Object();

						mainCategoryObject = new Object();
						mainCategoryObject.main_category_id = "1";
						mainCategoryObject.main_category_name = "beauty";
						mainCategoryArray.push(mainCategoryObject);

						mainCategoryObject = new Object();
						mainCategoryObject.main_category_id = "2";
						mainCategoryObject.main_category_name = "reading";
						mainCategoryArray.push(mainCategoryObject);

						mainCategoryObject = new Object();
						mainCategoryObject.main_category_id = "3";
						mainCategoryObject.main_category_name = "game";
						mainCategoryArray.push(mainCategoryObject);

						mainCategoryObject = new Object();
						mainCategoryObject.main_category_id = "4";
						mainCategoryObject.main_category_name = "job";
						mainCategoryArray.push(mainCategoryObject);

						//Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
						var subCategoryArray = new Array();
						var subCategoryObject = new Object();

						//beauty에 해당하는 sub category 리스트
						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "1";
						subCategoryObject.sub_category_id = "1"
						subCategoryObject.sub_category_name = "makeup"
						subCategoryArray.push(subCategoryObject);

						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "1";
						subCategoryObject.sub_category_id = "2"
						subCategoryObject.sub_category_name = "fashion"
						subCategoryArray.push(subCategoryObject);

						//reading에 해당하는 sub category 리스트
						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "2";
						subCategoryObject.sub_category_id = "1"
						subCategoryObject.sub_category_name = "literature"
						subCategoryArray.push(subCategoryObject);

						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "2";
						subCategoryObject.sub_category_id = "2"
						subCategoryObject.sub_category_name = "Non-literacy"
						subCategoryArray.push(subCategoryObject);

						//game에 해당하는 sub category 리스트
						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "3";
						subCategoryObject.sub_category_id = "1"
						subCategoryObject.sub_category_name = "PC"
						subCategoryArray.push(subCategoryObject);

						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "3";
						subCategoryObject.sub_category_id = "2"
						subCategoryObject.sub_category_name = "Mobile"
						subCategoryArray.push(subCategoryObject);

						//job에 해당하는 sub category 리스트
						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "4";
						subCategoryObject.sub_category_id = "1"
						subCategoryObject.sub_category_name = "resume"
						subCategoryArray.push(subCategoryObject);

						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "4";
						subCategoryObject.sub_category_id = "2"
						subCategoryObject.sub_category_name = "job Announcement"
						subCategoryArray.push(subCategoryObject);

						subCategoryObject = new Object();
						subCategoryObject.main_category_id = "4";
						subCategoryObject.sub_category_id = "3"
						subCategoryObject.sub_category_name = "resume share"
						subCategoryArray.push(subCategoryObject);

						//****************이부분은 DB로 셋팅하세요.

						//메인 카테고리 셋팅
						var mainCategorySelectBox = $("select[name='mainCategory']");

						for (var i = 0; i < mainCategoryArray.length; i++) {
							mainCategorySelectBox
									.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"
											+ mainCategoryArray[i].main_category_name
											+ "</option>");
						}

						//*********** 1depth카테고리 선택 후 2depth 생성 START ***********
						$(document)
								.on(
										"change",
										"select[name='mainCategory']",
										function() {

											//두번째 셀렉트 박스를 삭제 시킨다.
											var subCategorySelectBox = $("select[name='subCategory']");
											subCategorySelectBox.children()
													.remove(); //기존 리스트 삭제

											//선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
											$("option:selected", this)
													.each(
															function() {
																var selectValue = $(
																		this)
																		.val(); //main category 에서 선택한 값
																subCategorySelectBox
																		.append("<option value=''>all</option>");
																for (var i = 0; i < subCategoryArray.length; i++) {
																	if (selectValue == subCategoryArray[i].main_category_id) {

																		subCategorySelectBox
																				.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"
																						+ subCategoryArray[i].sub_category_name
																						+ "</option>");

																	}
																}
															});

										});
						//*********** 1depth카테고리 선택 후 2depth 생성 END ***********
						$("form").submit(function() {
							if ($("#board_name").val() == "") {
								alert("이름을 입력 하세요?");
								$("#board_name").focus();
								return false;
							}
							if ($("#board_pass").val() == "") {
								alert("비밀번호를 입력 하세요?");
								$("#board_pass").focus();
								return false;
							}
							if ($("#mainCategory").val() == "") {
								alert("main카테고리를 선택해주세요");
								return false;
							}
							if ($("#subCategory").val() == "") {
								alert("sub카테고리를 선택해주세요");
								return false;
							}
							if ($("#board_subject").val() == "") {
								alert("제목을 입력 하세요?");
								$("#board_subject").focus();
								return false;
							}
							if ($("#board_content").val() == "") {
								alert("내용을 입력 하세요?");
								$("#board_content").focus();
								return false;
							}
						});

					});
</script>

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
							href="homeSignUp.jsp">SIGN IN</a>&nbsp;&nbsp; <a
							href="homeSignin.jsp">SIGN UP</a>
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

		<div id="contentBo">
			<div class="form_all">
				<div class="page_menutitle_Bo">게시판</div>

				<form action="/Model2_Board222/BoardAddAction.bo" method="post"
					enctype="multipart/form-data" name="boardform">

					<table align=center border=1>
						<tr align="center" valign="middle">
							<td colspan="5" class="form_th">MVC 게시판</td>
						</tr>
						<tr>
							<td class="form_th">
								<div align="center">글쓴이</div>
							</td>
							<td><input class="form_input" name="BOARD_NAME"
								id="board_name" type="text" size="10" maxlength="10" value="" /></td>
						</tr>
						<tr>
							<td class="form_th">
								<div align="center">비밀번호</div>
							</td>
							<td><input class="form_input" name="BOARD_PASS"
								id="board_pass" type="password" size="10" maxlength="10"
								value="" /></td>
						</tr>
						<tr>
							<td class="form_th">
								<div align="center">게시판 카테고리</div>
							</td>
							<td><select name="mainCategory" id="mainCategory"
								style="width: 200px">
									<option value="">none</option>
							</select> <select name="subCategory" id="subCategory" style="width: 200px">
									<option value="">none</option>
							</select></td>
						</tr>
						<tr>
							<td class="form_th">
								<div align="center">제 목</div>
							</td>
							<td><input class="form_input" name="BOARD_SUBJECT"
								id="board_subject" type="text" size="50" maxlength="100"
								value="" /></td>
						</tr>
						<tr>
							<td class="form_th"">
								<div align="center">내 용</div>
							</td>
							<td class="form_th"><textarea name="BOARD_CONTENT"
									id="board_content" cols="67" rows="15"></textarea></td>
						</tr>
						<tr>
							<td style="font-family: 돋음; font-size: 12">
								<div align="center">파일 첨부</div>
							</td>
							<td><input name="BOARD_FILE" type="file" /></td>
						</tr>
						<tr bgcolor="cccccc">
							<td colspan="2" style="height: 1px;"></td>
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