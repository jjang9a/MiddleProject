<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<form action='updateForm.do' method='post'>
	<table class='table'>
		<tr><th>비밀번호 입력</th></tr>
		<tr><td><input type='password' name='pwcheck'><td></tr>
		<tr><td><input type='submit' name='submit' value='확인'></td></tr>
	</table>
</form>

<%-- 	<% String msg = (String) request.getAttribute("message"); %>
	<%
		if(msg != null){
	%>
		alert(<%=msg %>)
	<%
		}
	%> --%>
	
<script>
	document.querySelector('form').addEventListener('click', function(e){
		e.preventDefault();
		let check = document.querySelector('input[name="pwcheck"]').value; //name이 title인 input태그의 값을 가져오겠다
		let pw = ${user.passwd}
		
		if(check == pw){
			location.href="updeteUserForm.do"
		}else {
			alert('비밀번호가 일치하지 않습니다')
			check = '';
		}
	})
</script>