<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<head>
<meta charset="UTF-8">
<title>쪽지보내기</title>

<style>
form{
	margin-left : 5px;
}
.reciver{
	width: 285px;
	height: 20px;
}
textarea{
	margin-top : 10px;
	margin-bottom : 10px;
}
hr{
	margin-bottom : 11px;
}
#center{
	width : 140px;
	margin : auto;
}
</style>

</head>

<body bgcolor="" onunload="closePopup()">
	<h3> 쪽지보내기</h3>
	<hr>
	<form action="" type="post">
		<label>&nbsp받는사람&nbsp&nbsp</label><input type="text" class="reciver" name="reciver"><br>
		<textarea cols="50" rows="11" name="body"></textarea>
		<div id="center">
			<input type="submit" value="보내기" onclick="closePopup()">
			<input type="button" value="취소" onclick="closePopup()">
		</div>
	</form>
<script>
	function closePopup() {
		//자신(팝업)을 종료한다.
		self.close();
	}
</script>