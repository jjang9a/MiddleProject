<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<form action='travelBoardWrite.do' method='post' enctype="multipart/form-data">
	<table class='table'>
		<tr>
			<td>제목</td><td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>작성자</td><td><input type="text" name="writer" readonly value="${loginUser.getUserId }"></td>
		</tr>
		<tr>
			<td>내용</td><td><textarea cols="50" rows="10" name="boay"></textarea></td>
		</tr>
		<tr>
			<td>사진 첨부</td><td><input type="file" name="img1"></td>
		</tr>
		<tr>
			<td>사진 첨부</td><td><input type="file" name="img2"></td>
		</tr>
		<tr>
			<td>사진 첨부</td><td><input type="file" name="img3"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="저장"></td>
		</tr>
	</table>
</form>

<script>
	document.querySelector('form').addEventListener('submit', function(e){
		e.preventDefault(); // submit이벤트가 발생하지 않도록 기본 기능을 차단
		let title = document.querySelector('input[name="title"]').value; //name이 title인 input태그의 값을 가져오겠다
		let writer = document.querySelector('input[name="writer"]').value;
		let subject = document.querySelector('textarea[name="subject"]').value;

		let isOK = true;
		if(title == '' || title == 'null'){
			isOK = false;
		}
		if(writer == '' || writer == 'null'){
			isOK = false;
		}
		if(subject == '' || subject == 'null'){
			isOK = false;
		}

		if(!isOK){
			alert('입력항목을 확인하세요!!');
			return false;
		}

		// 이벤트의 콜백함수에서 this는 이벤트가 발생하는 대상 element.
		console.log(this);
		this.submit();
	})
</script>