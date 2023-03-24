<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; padding:10px;">
<h4>여행 패키지 상품 글쓰기</h4>
<br>
	<div>
		<form action="noticeModify.do" method="post">		
			<div style="margin:10px;">
				제목: <input type="text" name="boardTitle" id="boardTitle" value="${info.getBTitle()}" size="80">
			</div>
			<hr>			
			<div style="margin: 15px auto;">
				<p>공지사항 내용</p>  
				<textarea cols="120" rows="20" name="boardContents" id="boardContents">${info.getBContents()}</textarea>
			</div>	
			<input type="submit" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;" value="수정완료">				
		</form>
	</div>
</div>
	