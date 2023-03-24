<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../mypage/sidebar.jsp" %>

<style>
input{
	border:none;
}
button{
	border:none;
}
</style>

<div style="margin: 20px auto 100px auto; width: 600px; ">
<form action='userUpdate.do' method='post'>
	<table class="table" style="width:400px; margin:auto;">
			<tr><td>아이디 : </td><td><input type="text" name="id" value="${oldInfo.userId }" readonly></td></tr>
			<tr><td>비밀번호 : </td><td><input type="password" name="pw1" id="pw1" value=""></td></tr>
			<tr><td>비밀번호 확인 : </td><td><input type="password" name="pw2" id="pw2" value=""></td></tr>
			<tr><td>이 름 : </td><td><input type="text" name="name" value="${oldInfo.userName }" readonly></td></tr>
			<tr><td>이메일 : </td><td><input type="text" name="mail" value="${oldInfo.userMail }" required></td></tr>
			<tr><td>가입일 : </td><td><input type="text" name="join" value="${oldInfo.userJoin }" readonly></td></tr>
			<tr><td>성 별 : </td><td><input type="text" name="gender" value="${oldInfo.userGender }" readonly></td></tr>
			<tr><td>연락처 : </td><td><input type="text" name="phone" value="${oldInfo.userPhone }" required></td></tr>
			<tr><td>주 소 : </td><td><input type="text" name="addr" value="${oldInfo.userAddr }"></td></tr>
			<tr><td colspan="2" align="center"><button type="submit">수정</button>	<button type="reset">취소</button></td></tr>
		</table>
</form>

<script>
// 비밀번호와 비밀번호 확인 일치하는지 체크
let pw1 = document.querySelector('#pw1')
let pw2 = document.querySelector('#pw2')
pw2.onchange = comparePw;
function comparePw(){
    if(pw1.value != pw2.value){
        alert('비밀번호가 같지 않습니다');
        pw2.value='';
        pw2.focus();
    }
}
</script>

</div>