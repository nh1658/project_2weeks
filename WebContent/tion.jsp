<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script  language=javascript>
function fnCngList(sVal){
	var f = document.form1;
	var opt = $("#ctg_nm option").length();
	
	if(sVal==""){
		num = new Array("소분류");
		vnum = new Array("");
	}else if(sVal=="B1"){
		num = new Array("분류1-1","분류1-2","분류1-3");
		vnum = new Array("1-1","1-2","1-3");
	}else if(sVal=="B2"){
		num = new Array("분류2-1","분류2-2","분류2-3");
		vnum = new Array("2-1","2-2","2-3");
	}else if(sVal=="B3"){
		num = new Array("분류3-1","분류3-2","분류3-3");
		vnum = new Array("3-1","3-2","3-3");
	}
	
	for(var i = 0; i<opt; i++){
		f.SDIV.options[0] = null;
	}
	for(k = 0; k<num.length; k++){
		f.SDIV.options[k] = new Option(num[k],vnum[k]);
	}
}

</script>
</head>

<body>
<form name=form1>
	<ul>
		<li><select name="BDIV" id="ctg" class="sel_cate"
			onchange="fnCngList(this.value);">
				<option value="">선택</option>
				<option value="B1">분류1</option>
				<option value="B2">분류2</option>
				<option value="B3">분류3</option>
		</select></li>

		<li><select name="SDIV" id="ctg_nm" class="sel_list">
				<option value="">소분류</option>
		</select>
	</ul>

</form>

</body>
</html>