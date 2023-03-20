<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<form action='userUpdate.do' method='post'>
	<table class="table">
			<tr><td>아이디 : </td><td><input type="text" name="id" value="${oldInfo.userId }" readonly></td></tr>
			<tr><td>비밀번호 : </td><td><input type="password" name="pw" value=""></td></tr>
			<tr><td>비밀번호 확인 : </td><td><input type="password" name="pw2" value=""></td></tr>
			<tr><td>이 름 : </td><td><input type="text" name="name" value="${oldInfo.userName }" readonly></td></tr>
			<tr><td>이메일 : </td><td><input type="text" name="mail" value="${oldInfo.userMail }" required></td></tr>
			<tr><td>가입일 : </td><td><input type="text" name="mail" value="${oldInfo.userJoin }" readonly></td></tr>
			<tr><td>성 별 : </td><td><input type="text" name="mail" value="${oldInfo.userGender }" readonly></td></tr>
			<tr><td>연락처 : </td><td><input type="text" name="mail" value="${oldInfo.userPhone }" required></td></tr>
			<tr><td>주 소 : </td><td><input type="text" name="mail" value="${oldInfo.userAddr }"></td></tr>
			<tr><td colspan="2" align="center"><input type="submit" value="수정"></td></tr>
		</table>
</form>

<script>
// 비밀번호, 비밀번호확인 같으면 넘어가게하는거 구현하고싶은데....
</script>