<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<table class='table'>
	<form action='scManagerList.do' method='post' enctype="multipart/form-data">
		<tr>
			<td>제목</td><td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td><label for="head">말머리</label></td><td><select id="head" name="head">
				<option value="scManager">관리자</option>
				<option value="scUser">회원</option>
			</select>
		</tr>
		<tr>
			<td>내용</td><td><textarea cols="50" rows="10" name="body"></textarea></td>
		</tr>
		<tr>
			<td>사진 첨부</td><td><input type="file" name="img1" id="img1"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="저장"></td>
		</tr>
	</form>
</table>

<script>
	document.querySelector('form').addEventListener('submit', function(e){
		e.preventDefault(); 
		let title = document.querySelector('input[name="title"]').value; 
		let body = document.querySelector('textarea[name="body"]').value;

		let isOK = true;
		if(title == '' || title == 'null'){
			isOK = false;
		}
		if(body == '' || body == 'null'){
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