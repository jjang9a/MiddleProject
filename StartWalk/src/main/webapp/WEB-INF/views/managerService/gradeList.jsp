<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<table class="table">
	<tr>
		<th>회원 아이디</th>
		<th>등급</th>
		
	</tr>

	<c:forEach var="grade" items="${gd}">
		
			<tr>
				<td><a href="gradeInfo.do?userId=${grade.userId }">${grade.userId }</a></td>
				<td>${grade.userGrade }</td>
				<td></td>
			</tr>
		
	</c:forEach>




</table>