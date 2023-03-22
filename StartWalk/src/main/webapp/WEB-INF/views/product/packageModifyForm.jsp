<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; padding:10px;">
<h4>여행 패키지 상품 정보 수정</h4>
<br>
<div>
	<form action="packageModify.do" method="post">
	<c:if test="${loginUser.userGrade.equals('admin') }">
		<input type="submit" value="수정완료" class="btn btn-sm btn-dark rounded py-2 px-4">
	</c:if>
	<div style="margin:10px;">
		제목: <input type="text" name="pdName" value="${modify.pdName }" size="80">
	</div>
	<hr>
	<div style=" margin:10px 10px;">
		가격:  <input type="text" name="pdPrice" value="${modify.pdPrice }" style="margin-right: 180px; margin-left: 5px;" size="15">  할인가격:  <input type="text" name="pdSale" value="${modify.pdSale }" style="margin-right: 10px; margin-left: 5px;" size="15">
	</div>
	<div style="margin-left:10px;">
		출발:  <input type="date" name="pdStart" value="${modify.pdStart }" style="margin: 10px 230px 10px 5px;">  도착:  <input type="date" name="pdEnd" value="${modify.pdEnd }" style="margin: 10px 200px 10px 5px;">
	</div>
	<br>
	<div style="margin: 15px auto;">
		<p>여행 패키지 상품 상세 설명</p>  
		<p><textarea cols="120" rows="40" name="pdInfo">${modify.pdInfo }</textarea></p>
	</div>
	</form>
	</div>
</div>
	
	
	
	
