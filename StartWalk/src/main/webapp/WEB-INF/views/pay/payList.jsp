<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../mypage/sidebar.jsp"%>


<div>
</div>


<div>

<button style="float:right; font-size: 20px; margin: 10px;">
	<a href="payAddForm.do">충전하러가기</a></button>
	<table class="table" style="width:750px">
		<tr>
			<th>회원 아이디</th>
			<th>적립금</th>
			<th>출발페이</th>
			<th>충전일</th>
			<th>사유</th>
		</tr>
		<h3 style="text-align:center; margin:15px;">출발페이 총액: ${to}</h3>
		<h3 style="text-align:center; margin:15px;">적립금 총액: ${tal}</h3>


		<c:forEach var="pa" items="${pay}">
			<c:if test="${loginUser.getUserId() == pa.userId}">
				<tr>
					<td>${pa.userId }</td>
					<td>${pa.payPoint }</td>
					<td>${pa.payStart}</td>
					<td>${pa.payDate }</td>
					<td>${pa.payWhy }</td>
					<td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
		
</div>
	<div style="clear: both;"></div>
	
