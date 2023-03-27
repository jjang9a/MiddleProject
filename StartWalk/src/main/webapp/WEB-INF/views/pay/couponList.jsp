<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../mypage/sidebar.jsp" %>

<style>
tr, th{
	width:100px;
}
</style>

<div style="float: left; margin-bottom: 50px; margin-top: 40px; padding: 5px 40px;">
		<h3> 내 쿠폰 </h3>
	<hr>
<table class="table" style="width: 500px; margin-left: 80px; margin-top:50px; text-align:center;">
	<tr>
		<th>회원 아이디</th>
		<th>할인액</th>
		<th style="width:150px">쿠폰명</th>
		<th>상태</th>
	</tr>
	
	<c:forEach var="cp" items="${coupon}">
	<c:if test="${loginUser.getUserId()== cp.userId}">
		<tr>
			<td>${cp.userId }</td>
			<td>${cp.cpDiscount} </td>
			<td style="width:150px">${cp.cpName}</td>
			<td>${cp.cpStatus }</td>
		</tr>
	</c:if>

	</c:forEach>	
		
		</table>

	
		
	</div>
<div style="clear: both;"></div>



