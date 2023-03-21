<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../mypage/sidebar.jsp" %>

		

<div style="float: left; margin-bottom: 50px;">
	<form action='userUpdateForm.do' method='post' >
		<table class='table' style="margin-left:40px">
			<tr>
				<th>비밀번호 입력</th>
			</tr>
			<tr>
				<td><input type='password' name='pwcheck'>
				<td>
			</tr>
			<tr>
				<td><button type='submit' name='submit'>확인</button></td>
			</tr>
		</table>
	</form>
</div>
<div style="clear: both;"></div>


<script>
	
<%-- 	<% String msg = (String) request.getAttribute("message"); %>
	<%
		if(msg != ""){
	%>
		alert(<%=msg %>)
	<%
		}
	%> --%>
	if('${message}' != ''){
		alert('${message}');
	}
/* 	document.querySelector('form').addEventListener('click', function(e) {
		e.preventDefault();
		let check = document.querySelector('input[name="pwcheck"]').value;
		let pw = $
		{
			oldInfo.userPasswd
		}

		if (check == pw) {
			location.href = "updeteUserForm.do"
		} else {
			alert('비밀번호가 일치하지 않습니다')
			check = '';
		}
	}) */
</script>



</div>