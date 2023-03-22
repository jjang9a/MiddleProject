<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; padding:10px;">
<h4>여행 패키지 상품 글쓰기</h4>
<br>
<div>
	<form action="packageAdd.do	" method="post" enctype="multipart/form-data">
	
	<c:if test="${loginUser.userGrade.equals('admin') }">
		<input type="submit" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;" value="등록">
	</c:if>
	
	<div style="margin:10px;">
		제목: <input type="text" name="pdName" id="pdName" size="80">
	</div>
	<hr>
	<div style=" margin:10px 10px;">
		가격:  <input type="text" name="pdPrice" id="pdPrice" style="margin-right: 180px; margin-left: 5px;" size="15">  할인가격:  <input type="text" name="pdSale" id="pdSale" style="margin-right: 10px; margin-left: 5px;" size="15">
	</div>
	<hr>
	<div style=" margin:10px 10px;">
		<p style="margin-bottom: 0;">지역</p>  
		<input type="radio" name="pdLocation" id="seoul" value="서울 경기"> 
		<label for="seoul">서울 경기</label>
		<input type="radio" name="pdLocation" id="chunggang" style="margin-left: 20px" value="충청 강원도"> 
		<label for="chunggang">충청 강원도</label>
		<input type="radio" name="pdLocation" id="gyeongsang"  style="margin-left: 20px" value="경상도"> 
		<label for="gyeongsang">경상도</label>
		<input type="radio" name="pdLocation" id="jeolla" style="margin-left: 20px" value="전라도"> 
		<label for="jeolla">전라도</label>
		<input type="radio" name="pdLocation" id="Jeju" style="margin-left: 20px" value="제주도"> 
		<label for="Jeju">제주도</label>
	</div>
	<hr>
	<div style="margin-left:10px;">
		출발:  <input type="date" name="pdStart" id="pdStart" style="margin: 10px 230px 10px 5px;">  도착:  <input type="date" name="pdEnd" id="pdEnd" style="margin: 10px 200px 10px 5px;">
	</div>
	<hr>

	<div style="margin: 15px auto;">
		<p>여행 패키지 상품 상세 설명</p>  
		<p><textarea cols="120" rows="40" name="pdInfo" id="pdInfo">내용 입력</textarea></p>
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
	