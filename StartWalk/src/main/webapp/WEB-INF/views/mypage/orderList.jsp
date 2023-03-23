<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../mypage/sidebar.jsp" %>

<div style="float: left; margin-bottom: 50px;">
	
	<div style="margin: 40px 30px; width:700px;">
		<h3>주문 내역</h3>
	</div>
	<div style="margin-left:30px; margin-top:0;"></div>
	<table style="margin-left:40px;">
		
		<c:choose>
			<c:when test="${loginUser.getUserId()!= null}">
				<c:forEach var="order" items="${list }">
					<c:choose>
					<c:when test="${loginUser.getUserId()== order.getUserId()}">
					<tr id="packDetail" style="padding: 5px; margin: 10px; border-bottom: 1px solid rgb(208, 208, 208);">
						<td style="width: 180px; height: 110px; padding: 10px;">
							이미지 style="width: 180px; height: 110px; "
						</td>
						<td style="width: 440px; height: 150px; padding: 10px;">
							<input type="hidden" name="pdId" value="${order.pdId }">
							<p>&#91; ${order.pdType } ${order.pdId } &#93; ${order.pdName }</p>						
							<p>${order.orderDate }</p>
							<p>${order.pdPrice } ${order.pdSale }</p>
							<p>${order.orderStatus }</p>
						</td>
						<td>
							<a href="addReviewForm.do?pdId=${order.pdId }" class="btn btn-sm btn-primary rounded py-2 px-4">리뷰쓰기</a> 
						</td>
					</tr>
					</c:when>
					<c:otherwise>
						<p style="margin-left:40px;">구매하신 상품이 없습니다.</p>
					</c:otherwise>
					</c:choose>
				</c:forEach>				
			</c:when>
			<c:otherwise>
				<p>구매목록은 로그인 후 확인 가능합니다.</p>
			</c:otherwise>
		</c:choose>


	</table>
	
	<div style="clear: both; margin: 10px auto;">
		<div style="width: 700px; margin: 0 auto; text-align: center;">
			<c:if test="${page.prev }">
				<a href="packageList.do?page=${page.startPage - 1 }" style="color: black;"> &laquo; &nbsp; </a>
			</c:if>

			<c:forEach begin="${page.startPage }" end="${page.endPage }" var="i">
				<c:choose>
					<c:when test="${i == page.page }">
						<a class="active" href="packageList.do?page=${i }"style="color: black; background-color: blanchedalmond; padding: 2px; border-radius: 20%; text-align: center; margin:5px;">
						&nbsp; ${i } &nbsp;</a>
					</c:when>
					<c:otherwise>
						<a href="packageList.do?page=${i }"
							style="color: black; background-color: blanchedalmond; padding: 2px; border-radius: 20%; text-align: center; margin:5px;">
							&nbsp; ${i } &nbsp;</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${page.next }">
				<a href="packageList.do?page=${page.endPage + 1 }" style="color: black;"> &nbsp; &raquo; </a>
			</c:if>
		</div>
	</div>
	
</div>

<div style="clear: both; margin: 20px auto;">
	
</div>