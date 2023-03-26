<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<form name="testForm">
	<input type="button" value="쪽지보내기" onclick="openPopUp()"><br>
</form>


<script>
function openPopUp() {
	// 함수 동작 테스트 
	//alert("팝업 테스트");
	
	//window.open("[팝업을 띄울 파일명 path]", "[별칭]", "[팝업 옵션]")
	 window.open("writeMsg.do", "Message", "width=400, height=360, top=150, left=200");
}
</script>
