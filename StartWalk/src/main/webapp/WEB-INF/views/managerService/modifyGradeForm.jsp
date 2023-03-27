<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form id="myUrm" action="gradeModify.do" method="post">
	
	<table class="table">
	
	<tbody>
		<tr>
		<td align="center" colspan="2">
			<td>회원아이디</td>
			<td><input type="hidden" name="id">${info.getUserId() }</td>
		</tr>
		<tr>
		<td align="center" colspan="2">
			<td>등급</td>
			<td><input type="text" name="grade">${info.getUserGrade() }</td>
		</tr>
		<tr>
			<td align="center" colspan="2"><input class="btn btn-primary" type="submit" id="modBtn" value="등업"></td>
		</tr>					
			
</table>			
</form>
	<script>
	//수정
		document.querySelector("#modBtn").addEventListener('click',function(){
			let myUrm = document.querySelector('#myUrm');
			let id = document.querySelector('input[name="id"]').value;
			let grade = document.querySelector('input[name="grade"]').value;
			
			myUrm.append(document.querySelector('input[name="id"]'));
			myUrm.append(document.querySelector('input[name="grade"]'));
			
			myUrm.submit();
			
		})
	
	</script>
	