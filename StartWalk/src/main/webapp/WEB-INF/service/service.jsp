<%@page import="co.start.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




	<table class="table">
		<tr>
			<td>글번호</td>
			<td><input type="text" name="id" readonly value="${board.bId }"></td>
			<td>조회수  <b>${board.bCount }</b> </td>
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
			<td>게시판 분류</td>
			<td colspan=2><input type="text" name="Category" value="${board.bCategory }"></td>
		</tr>
		<tr>
			<td>추천수</td>
			<td colspan=2><input type="text" name="Good" value="${board.bGood }"></td>
		</tr>
		<tr>
			<td>매칭</td>
			<td colspan=2><input type="text" name="Matching" value="${board.bMatching }"></td>
		</tr>
		
		<tr>
			<td>첨부파일</td>
			<td colspan=2>
			<c:choose>
				<c:when test="${board.bFile != null}">
					<input type="text" name="File" value="${board.bFile }">
				</c:when>
				<c:otherwise>
					<input type="text" name="File">
				</c:otherwise>
			</c:choose>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
			 <button id="modBtn">수정</button>
			 <button id="delBtn">삭제</button></td></tr>
		
	</table>

	<form id="myFrm" action="noticeModify.do">
	</form>

	<script>
		document.querySelector('#modBtn').addEventListener('click', function(){
			let myFrm = document.querySelector('#myFrm');
			let nid = document.querySelector('input[name="nid"]').value;
			let title = document.querySelector('input[name="title"]').value;
			let subject = document.querySelector('textarea[name="subject"]').textContent;
			
			myFrm.append(document.querySelector('input[name="nid"]'));
			myFrm.append(document.querySelector('input[name="title"]'));
			myFrm.append(document.querySelector('textarea[name="subject"]'));
			console.log(myFrm);
			myFrm.submit();
		});

		//삭제
		document.querySelector('#delBtn').addEventListener('click', function () {

			let myFrm = document.querySelector('#myFrm');
			myFrm.action = 'noticeRemove.do'; 
			myFrm.append(document.querySelector('input[name="nid"]'));

			myFrm.submit();
		})
	</script>

