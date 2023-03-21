<%@page import="co.start.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  BoardVO vo = (BoardVO) request.getAttribute("board");
%>

 
	<table class="table">
		<tr>
			<td>글번호</td>
			<td><input type="text" name="id" readonly value="${board.bId }"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="id" readonly value="${board.userId }"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td colspan=2><input type="text" name="title" value="${board.bTitle }"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan=2><textarea cols="30" rows="5" name="Contents">${board.bContents }</textarea></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td colspan=2><input type="date" name="Date" value="${board.bWriteDate }"></td>
		</tr>
		<tr>
			<td colspan="3" align="center">
			 <button id="modBtn">수정</button>
			 <button id="delBtn">삭제</button></td></tr>
		
	</table>

	<form id="myFrm" action="scModify.do">
	</form>

	<script>
		document.querySelector('#modBtn').addEventListener('click', function(){
			let myFrm = document.querySelector('#myFrm');
			let id = document.querySelector('input[name="id"]').value;
			let title = document.querySelector('input[name="title"]').value;
			let Contents = document.querySelector('textarea[name="Contents"]').textContent;
			
			myFrm.append(document.querySelector('input[name="id"]'));
			myFrm.append(document.querySelector('input[name="title"]'));
			myFrm.append(document.querySelector('textarea[name="Contents"]'));
			console.log(myFrm);
			myFrm.submit();
		});

		//삭제
		document.querySelector('#delBtn').addEventListener('click', function () {
			myFrm.action = 'scRemove.do'; 
			let myFrm = document.querySelector('#myFrm');
			
			myFrm.append(document.querySelector('input[name="id"]'));

			myFrm.submit();
		})
	</script> 




