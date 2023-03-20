<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; ">

	<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">삭제</a>
	<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">수정</a>
	
	<h3>&#91 ${info.getBTitle() } &#92</h3>
	<hr>
	
	<br>
	
	
	<h5 style="margin: 20px;">${info.getUserId() }</h5>
	
	
	<div style="padding: 20px; margin: 20px;">
		<p>${info.getBContents() }</p>
	</div>
	
	<div style="padding: 10px;">
		<p><strong style="background-color: blanchedalmond; padding: 0 10px; color: black;">동행</strong></p>
		<p style="color: rgb(57, 57, 57); font-size: 14px;">&#10003 댓글 쓰기</p>
		<input type="submit" value="등록" style="height: 80px; width: 60px; float: right;">
		<textarea rows="3" cols="110" ></textarea>
		
		<div style="clear: both; margin: 10px 0; padding: 20px;">		
			<div >
				<hr>
				<button style="float: right; font-size: 12px; margin: 0 5px;">삭제</button><button style="float: right; font-size: 12px; margin: 0 5px;">수정</button>
				<p ><strong>${loginUser.userId }</strong> &nbsp &nbsp &nbsp &nbsp <small style="font-size: 7px;">댓글 작성 날짜 및 시간</small></p>
				<p style="clear: both;">리뷰 내용</p>
			</div>
			
		</div>
	</div>
	<div>
	<p style="text-align: center;">페이징</p>
	</div>

</div>



<table class="table">



</table>

<h3>댓글</h3>



<div>
	<table class="table">
		<form>
			<tr>
				<td>댓글 번호 : <input type="text" id="coid"></td>
				
				<td>게시판 번호 : <input type="text" id="bid"></td>
				
				<td>ID : <input type="text" id="id"></td>
				
				<td>내용 : <input type="text" size="30" id="text"></td>
				
				<td><button id="addBtn">등록</button></td>
				<td><button id="udBtn">수정</button></td>
			</tr>
		</form>
	</table>
</div>

<div>
	<table class="table">
		<thead>
			<tr><th>댓글 번호</th><th>게시판 번호</th><th>아이디</th><th>내용</th>
			<tbody id="list">
			</tbody>
		</table>	
</div>	
	
	


<script>
 	fetch('CommentListAjax.do')
 	.then(function(resolve){
 		console.log(resolve);
 		return resolve.json();
 	})
 	.then(function(result){
 		console.log(result);
 		for(let i=0; i<result.length; i++){
 			let id = result[i].id;
 			makeTr(result[i]);
 		}
 	})
 	.catch(function(reject){
 		console.error(reject);
 		
 		
 	})
 	
 	document.getElementById('addBtn').addEventListener('click',function(e){
		e.preventDefault();
		
		let coid = document.querySelector('#coid').value;
		let bid = document.querySelector('#bid').value;
		let id = document.querySelector('#id').value;
		let text = document.querySelector('#text').value;
		

		if(!id || !text){
			alert("똑바로 입력해라!!");
			return;
		}

		fetch('commentsAdd.do',{
			method: 'post',
			headers:{'Content-type': 'application/x-www-form-urlencoded'},
			body: 'coid='+coid+'&bid='+bid+'&id='+id+'&text='+text

		})
		.then(resolve=>resolve.json())
		.then(result=>{
			console.log(result);
			if(result.retCode=='Success'){
				alert('등록성공!!!');
				makeTr(result.member);
				initField();
			} else if (result.retCode=='Fail'){
				alert('예외발생!!!');
			}

		})
		.catch(reject=>console.error(reject));
	})
 	
	//tr 생성
 	function makeTr(member={}) {
		let tr = document.createElement('tr');
		for(let prop in member){
			let td = document.createElement('td');
			td.innerText = member[prop];
			tr.append(td);
		}
		document.getElementById('list').append(tr);
	}
 	
 </script>


