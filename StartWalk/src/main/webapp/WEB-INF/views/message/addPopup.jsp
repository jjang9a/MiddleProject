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
h3{
	text-align : center;
}
</style>

</head>

<body bgcolor="#eee" onunload="closePopup()">
	<h3>쪽지 보내기&nbsp</h3>
	<hr>
	<form action="writeMsg.do" name="addBtn" type="post" target="parentWindow">
		<label>&nbsp받는사람&nbsp&nbsp</label><input type="text" class="reciver" name="reciver"><br>
		<textarea cols="50" rows="11" name="body"></textarea>
		<div id="center">
			<input type="submit" value="보내기" onclick="sendPopup()">
			<input type="button" value="취소" onclick="closePopup()">
		</div>
	</form>
<script>
/* parent.window.name="parentWindow";
document.addBtn.submit(); */



	function sendPopup() {
		alert('쪽지를 보냈습니다')
	}
	function closePopup() {
		//자신(팝업)을 종료한다.
		self.close();
	}
</script>