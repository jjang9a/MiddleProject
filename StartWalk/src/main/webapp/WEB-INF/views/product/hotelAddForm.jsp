<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; padding:10px;">
<h3 style="text-align : center">상품 등록</h3>
<br>
<table class='table' style="width:550px; margin:auto;">
	<form action='addProduct.do' method='post' enctype="multipart/form-data">
		<tr>
			<td><label for="type">카테고리</label></td><td><select id="type" name="type">
				<option value="HO">숙소상품</option>
				<option value="PR">지역명물</option>
			</select>
		</tr>
		<tr>
			<td>상품명</td><td><input type="text" name="name" style="width:420px"></td>
		</tr>
		<tr>
			<td>가격</td><td><input type="text" name="price" style="width:420px"></td>
		</tr>
		<tr>
			<td>상세설명</td><td><textarea cols="50" rows="10" name="body"></textarea></td>
		</tr>
		<tr>
			<td>대표 사진</td><td><input type="file" name="img1" id="img1"></td>
		</tr>
		<tr>
			<td>제품 상세1</td><td><input type="file" name="img2" id="img2"></td>
		</tr>
		<tr>
			<td>제품 상세2</td><td><input type="file" name="img3" id="img3"></td>
		</tr>
		<tr>
			<td>제품 상세3</td><td><input type="file" name="img4" id="img4"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="등록"></td>
		</tr>
	</form>
</table>
</div>
<script>
</script>