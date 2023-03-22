<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; ">
	<c:if test="${loginUser.userGrade.equals('admin') }">
		<a href="packageDelete.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">삭제</a>
		<a href="packageModifyForm.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">수정</a>
	</c:if>
	<div style="clear: both; margin-bottom: 5px;"></div>
	<div style="float: right; margin: 0 10px; padding:0;">
	<c:choose>
			<c:when test="${info.pdSale == 0 }">
				<p style="font-size: 25px; margin:0; padding:0;">
					<fmt:setLocale value="ko_kr" />
					<fmt:formatNumber value="${info.pdPrice }" type="currency" />
				</p>
			</c:when>
			<c:otherwise>
			<c:choose>
			<c:when test="${info.pdSale == info.pdPrice }">
				<p style="font-size: 25px; margin:0; padding:0;">
					<strong style="color: red;">
					<fmt:setLocale value="ko_kr" />
					<fmt:formatNumber value="${info.pdSale }" type="currency"  /></strong>
				</p>
			</c:when>
			<c:otherwise>
				<p style="font-size: 25px; margin:0; padding:0;">
					<fmt:setLocale value="ko_kr" /><del>
					<fmt:formatNumber value="${info.pdPrice }" type="currency" /></del>
					<strong style="color: red;">
					<fmt:setLocale value="ko_kr" />
					<fmt:formatNumber value="${info.pdSale }" /></strong>
				</p>
			</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>	
	</div>
	
	<h3>&#91; ${info.pdType}${info.pdId}&#93; ${info.pdName}</h3>
	<hr>
	<p>| &nbsp; 출발:<fmt:formatDate value="${info.pdStart }" type="both" pattern="yyyy-MM-dd E요일" /> &nbsp; | &nbsp; 도착:<fmt:formatDate value="${info.pdEnd }" type="both" pattern="yyyy-MM-dd E요일" />&nbsp; |</p>
	
	
	
	<br>
	<div>
		<img alt="여행 패키지 상품 이미지" src="img/${info.prImg}" style="width: 300px; height:200px;">
	</div>
	
	<h5 style="margin: 20px;">여행일정</h5>
	<div style="background-color: rgb(242, 242, 242); padding: 20px; margin: 20px 0;">
		<b><p>참고하세요</p></b>
		<p>여행 일정은 계약 체결 시 예상하지 못한 부득이한 사정 등이 발생한 경우 여행자의 사전 동의를 거쳐 변경될 수 있음을 양지하여 주시기를 바랍니다.</p>
	</div>
	
	<div style="padding: 20px; margin: 20px;">
		<p>${info.pdInfo }</p>
	</div>
	
	<div style="padding: 10px;">
		<p><strong style="background-color: blanchedalmond; padding: 0 10px; color: black;">Review</strong></p>
		<p style="color: rgb(57, 57, 57); font-size: 14px;">&#; 10003 리뷰 쓰기</p>
		<input type="submit" value="등록" style="height: 80px; width: 60px; float: right;">
		<textarea rows="3" cols="110" ></textarea>
		
		<div style="clear: both; margin: 10px 0; padding: 20px;">		
			<div >
				<hr>
				<button style="float: right; font-size: 12px; margin: 0 5px;">삭제</button><button style="float: right; font-size: 12px; margin: 0 5px;">수정</button>
				<p style="margin:0;"><strong>회원 ID</strong> &nbsp; &nbsp; &nbsp; &nbsp; </p>
				<div style="overflow:hidden;">
					<div class="bi-star-fill" style="float: left;"></div>
					<div class="bi-star-fill" style="float: left;"></div>
					<div class="bi-star-half" style="float: left;"></div>
					<div class="bi-star" style="float: left;"></div>
					<div class="bi-star" style="float: left;"></div>
				</div>
				<p style="clear: both;">리뷰 내용</p>
			</div>
			<div >
				<hr>
				<button style="float: right; font-size: 12px; margin: 0 5px;">삭제</button><button style="float: right; font-size: 12px; margin: 0 5px;">수정</button>
				<p ><strong>회원 ID</strong> &nbsp; &nbsp; &nbsp; &nbsp; <small style="font-size: 7px;">댓글 작성 날짜 및 시간</small></p>
				<p style="clear: both;">리뷰 내용</p>
			</div>
			<div >
				<hr>
				<button style="float: right; font-size: 12px; margin: 0 5px;">삭제</button><button style="float: right; font-size: 12px; margin: 0 5px;">수정</button>
				<p ><strong>회원 ID</strong> &nbsp; &nbsp; &nbsp; &nbsp; <small style="font-size: 7px;">댓글 작성 날짜 및 시간</small></p>
				<p style="clear: both;">리뷰 내용</p>
			</div>
		</div>
	</div>
	<div>
	<p style="text-align: center;">페이징</p>
	</div>

</div>
