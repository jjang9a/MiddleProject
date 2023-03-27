<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="mateAdd.do" method="post">
<table class="table">
	<tbody>
		<tr>
		<td align="center" colspan="2">
			<td>아이디</td>
			<td><input type="text" name="id" value="${loginUser.getUserId() }" ></td>
		</tr>
		 <tr>
		<td align="center" colspan="2">
			<td><label for="type">카테고리</label></td><td><select id="type" name="type">
				<option value="WI">동행</option>
				<option value="WR">매칭후기</option>
			</select>
		</tr>	 
		<tr>
		<td align="center" colspan="2">
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
		<td align="center" colspan="2">
			<td>내용</td>
			<td><textarea cols="30" rows="5" name="text"></textarea></td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<div style="text-align: center;"> <input class="btn btn-primary" type="submit" value="글쓰기"></div>
			</td>
		</tr>

	</tbody>

  </table>
   </form>

  <script>
	document.querySelector('form').addEventListener('submit',function(e){
		
		let ca = document.querySelector('input[name="ca"]').value; 
		let title = document.querySelector('input[name="title"]').value;
		let text = document.querySelector('input[name="text"]').value;
		
		console.log(this);
		this.submit();
	})
</script>
	

