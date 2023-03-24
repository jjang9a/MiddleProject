<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<button style="text-align:right; font-size: 20px; margin:10px;">
		<a href="payAddForm.do">충전하러가기</a>
<table class="table">
	<tr>
		<th>회원 아이디</th>
		<th>잔액</th>
		<th>충전일</th>
		<th>사유</th>
	</tr>
		
	<c:forEach var="pa" items="${pay}">
	<c:if test="${loginUser.getUserId() == pa.userId}">
	<tr>
		<td>${pa.userId }</td>
		<td>${pa.payStart}</td>
		<td>${pa.payDate }</td>
		<td>${pa.payWhy }</td>
		<td>
	</tr>
	</c:if>
	</c:forEach>	
</table>	

<div style="clear:both;">

</div>


