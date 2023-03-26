<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
table{
	width : 600px;
	border : none;
	margin : auto;
}
tr{
	margin : 10px;
}
th, td{
	padding : 5px;
}
</style>

<div style="margin: 100px auto 100px auto; width: 1000px; ">
	<h3 style="padding-left : 180px">새 글 쓰기</h3>
	<hr>
	<table>
		<form action='travelBoardWrite.do' method='post' enctype="multipart/form-data">
			<tr>
				<td>제목</td><td><input type="text" name="title" style="width : 420px"></td>
			</tr>
			<tr>
				<td><label for="head">말머리</label></td><td><select id="head" name="head">
					<option value="pk">패키지여행</option>
					<option value="free">자유여행</option>
				</select>
			</tr>
			<tr>
				<td>내용</td><td><textarea cols="50" rows="10" name="body"></textarea></td>
			</tr>
			<tr>
				<td>사진 첨부</td><td><input type="file" name="img1" id="img1"></td>
			</tr>
			<tr>
				<td>사진 첨부</td><td><input type="file" name="img2" id="img2"></td>
			</tr>
			<tr>
				<td>사진 첨부</td><td><input type="file" name="img3" id="img3"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" style="padding : 15px"><input type="submit" class="btn btn-primary" value="저장"></td>
			</tr>
		</form>
	</table>
</div>

<script>
	document.querySelector('form').addEventListener('submit', function(e){
		e.preventDefault(); // submit이벤트가 발생하지 않도록 기본 기능을 차단
		let title = document.querySelector('input[name="title"]').value; //name이 title인 input태그의 값을 가져오겠다
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