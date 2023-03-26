<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../mypage/sidebar.jsp" %>

<div style="margin: 20px auto 100px auto; width: 600px; ">

<table class="table" style="width: 500px; margin-left: 140px; margin-top:50px">
	<tr><th colspan="5" style="font-size:20px">내 쿠폰</th></tr>
	<tr>
		<th>쿠폰 번호</th>
		<th>회원 아이디</th>
		<th>할인금</th>
		<th>쿠폰명</th>
		<th>상태</th>
	</tr>
	
	<c:forEach var="cp" items="${coupon}">
	<c:if test="${loginUser.getUserId()== cp.userId}">
		<tr>
			<td>${cp.cpId }</td>
			<td>${cp.userId }</td>
			<td>${cp.cpDiscount} </td>
			<td>${cp.cpName}</td>
			<td>${cp.cpStatus }</td>
		</tr>
	</c:if>
	</c:forEach>
	</table>	
<div style="clear: both;"></div>
</div>

