<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
.attimg {
	width : 400px
}
</style>

<div style="margin: 100px auto 100px auto; width: 1000px; ">

	<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">삭제</a>
	<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">수정</a>
	
	<h3>${info.getBHead() } ${info.getBTitle() }</h3>
	<hr>
	<h6 style="margin: 20px; padding-right:20px;" align="right">작성자 : ${info.getUserId() }</h6>
	
	
	<div style="padding: 20px; margin: 20px;">
		<c:forEach var="i" items="${list }">
			<img src="./upload/${i.imgFile }" alt="첨부이미지" class="attimg"><br><br>
		</c:forEach>
		<p>${info.getBContents() }</p>
	</div>
	
	<div style="padding: 10px;">
		<p><strong style="background-color: blanchedalmond; padding: 0 10px; color: black;">Comment</strong></p>
		<p style="color: rgb(57, 57, 57); font-size: 14px;">&#10003 댓글 쓰기</p>
		<input type="submit" value="등록" style="height: 80px; width: 60px; float: right;">
		<textarea rows="3" cols="110" ></textarea>
		
		<div style="clear: both; margin: 10px 0; padding: 20px;">		
			<div >
				<hr>
				<button style="float: right; font-size: 12px; margin: 0 5px;">삭제</button><button style="float: right; font-size: 12px; margin: 0 5px;">수정</button>
				<p ><strong>${loginUser.userId }</strong> &nbsp &nbsp &nbsp &nbsp <small style="font-size: 7px;">댓글 작성 날짜 및 시간</small></p>
				<p style="clear: both;">리뷰 내용</p>
			</div>
			
		</div>
	</div>

</div>
