<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; padding:10px;">
<h4>리뷰 작성</h4>
<br>
<div>
	<form action="addReview.do" method="post">
	
	
	<div style=" margin:10px 10px;">
		작성자 ID:  <input type="text" name="userId" id="userId" value="${loginUser.getUserId()}" style="margin-right: 180px; margin-left: 5px; border: 0;" size="15" >  
		상품번호:  <input type="text" name="pdId" id="pdId"  size="15" value="${pdId }" style="margin-right: 180px; margin-left: 5px; border: 0;">
	</div>
	<hr>
	
	<div style=" margin:10px 10px;">
		<p style="margin-bottom: 0; font-weight: 700; color: black;">평점 주기</p>
		 
		<input type="radio" name="prStar" id="prStar" value="1" style="margin-left: 10px;"> 
		<label for="seoul"><span style="color: rgb(255, 225, 0);">&#9733;</span> (매우 불만족)</label>
		<input type="radio" name="prStar" id="prStar" value="2" style="margin-left: 10px;"> 
		<label for="seoul"><span style="color: rgb(255, 225, 0);">&#9733; &#9733;</span>(불만족)</label>
		<input type="radio" name="prStar" id="prStar" value="3" style="margin-left: 10px;"> 
		<label for="seoul"><span style="color: rgb(255, 225, 0);">&#9733; &#9733; &#9733;</span> (보통)</label>
		<input type="radio" name="prStar" id="prStar" value="4" style="margin-left: 10px;"> 
		<label for="seoul"><span style="color: rgb(255, 225, 0);">&#9733; &#9733; &#9733; &#9733;</span> (만족)</label>
		<input type="radio" name="prStar" id="prStar" value="5" style="margin-left: 10px;"> 
		<label for="seoul"><span style="color: rgb(255, 225, 0);">&#9733; &#9733; &#9733; &#9733; &#9733;</span> (매우 만족)</label>
		
	</div>
	<hr>
	

	<div style="margin: 15px auto;">
		<p style="font-weight: 700; margin:10px 10px; color: black;">리뷰 내용</p>  
		<p><textarea cols="120" rows="10" name="prBody" id=""></textarea></p>
	</div>
	
	<div>
		<input type="submit" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;" value="등록">
	</div>
		</form>
	</div>
</div>
	