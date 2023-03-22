<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; padding:10px;">
<h4>여행 패키지 상품 글쓰기</h4>
<br>
<div>
	<c:if test="${loginUser.userGrade.equals('admin') }">
		<a href="packageAdd.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">등록</a>
	</c:if>
	<form action="packageAdd.do	" method="post" enctype="multipart/form-data">
	<div style="margin:10px;">
		제목: <input type="text" name="pdName" value="" size="80">
	</div>
	<hr>
	<div style=" margin:10px 10px;">
		가격:  <input type="text" name="pdPrice" value="" style="margin-right: 180px; margin-left: 5px;" size="15">  할인가격:  <input type="text" name="pdSale" value="" style="margin-right: 10px; margin-left: 5px;" size="15">
	</div>
	<hr>
	<div style=" margin:10px 10px;">
		<p style="margin-bottom: 0;">지역</p>  
		<input type="radio" name="pdLocation" id="seoul" > 
		<label for="seoul">서울 경기</label>
		<input type="radio" name="pdLocation" id="chunggang" style="margin-left: 20px"> 
		<label for="chunggang">충청 강원도</label>
		<input type="radio" name="pdLocation" id="gyeongsang"  style="margin-left: 20px"> 
		<label for="gyeongsang">경상도</label>
		<input type="radio" name="pdLocation" id="jeolla" style="margin-left: 20px"> 
		<label for="jeolla">전라도</label>
		<input type="radio" name="pdLocation" id="Jeju" style="margin-left: 20px"> 
		<label for="Jeju">제주도</label>
	</div>
	<hr>
	<div style="margin-left:10px;">
		출발:  <input type="date" name="pdStart" style="margin: 10px 230px 10px 5px;">  도착:  <input type="date" name="pdEnd" value="" style="margin: 10px 200px 10px 5px;">
	</div>
	<hr>

	<div style="margin: 15px auto;">
		<p>여행 패키지 상품 상세 설명</p>  
		<p><textarea cols="120" rows="40" name="pdInfo">내용 입력</textarea></p>
	</div>
	<div style="margin-left:10px;">
		대표 사진 첨부<input type="file" name="prImg" id="prImg" style="margin-left:10px;">
	</div>
	<hr>
	<div style="margin-left:10px;">
		상세 설명 사진1 첨부<input type="file" name="img1" id="img1" style="margin-left:10px;">
	</div>
	<hr>
	<div style="margin-left:10px;">
		상세 설명 사진2 첨부<input type="file" name="img2" id="img1" style="margin-left:10px;">
	</div>
	<hr>
	<div style="margin-left:10px;">
		상세 설명 사진3 첨부<input type="file" name="img3" id="img1" style="margin-left:10px;">
	</div>
		</form>
	</div>
</div>
	