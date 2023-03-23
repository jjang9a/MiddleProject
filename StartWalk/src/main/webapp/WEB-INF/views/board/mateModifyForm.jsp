<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <form id="myFrm" action="mateModify.do" method="post">
 <table class="table">
	<tbody>
		<tr>
		<td align="center" colspan="2">
			<td>게시판 번호</td>
			<td><input type="text" name="bid" value="${mo.getBId() }"></td>
		<tr>
		<td align="center" colspan="2">
			<td>제목</td>
			<td><input type="text" name="title" value="${mo.getBTitle() }"> </td>
		</tr>
		<tr>
		<td align="center" colspan="2">
			<td>내용</td>
			<td><textarea cols="30" rows="5" name="text">${mo.getBContents() }</textarea></td>
		</tr>
	<tr>
			
			 <td align="center" colspan="2"><input class="btn btn-primary"
				type="submit" id="modBtn" value="수정"></td> 
		</tr>

	</tbody>

  </table>
  

	
  </form>
   
				
 <script>
//수정
	document.querySelector("#modBtn").addEventListener('click',function(){
    let myFrm = document.querySelector('#myFrm');
	   let bid = document.querySelector('input[name="bid"]').value;
	   let title = document.querySelector('input[name="title"]').value;
	   let text = document.querySelector('textarea[name="text"]').textContent;
	   
		myFrm.append(document.querySelector('input[name="bid"]'));
		myFrm.append(document.querySelector('input[name="title"]'));
		myFrm.append(document.querySelector('textarea[name="text"]'));
	 
	   myFrm.submit(); 

	})
  
 </script>
 
 



 
 
 
 
 

  
   





