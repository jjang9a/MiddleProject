<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
.attimg {
	width : 400px
}
button{
	border : 1px solid #808080;
}
</style>

<div style="margin: 100px auto 100px auto; width: 1000px; ">

	<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">삭제</a>
	<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">수정</a>
	
	<h3>${info.getBHead() } ${info.getBTitle() }</h3>
	<hr>
	<h6 style="margin: 20px; padding-right:20px;" align="right">작성자 : ${info.getUserId() }</h6>
	
	
	<div style="padding: 20px; margin: 20px;">
		<c:forEach var="i" items="${list }">
			<img src="./upload/${i.imgFile }" alt="첨부이미지" class="attimg"><br><br>
		</c:forEach>
		<p>${info.getBContents() }</p>
	</div>
	
	<div style="padding: 10px;">
		<p><strong style="background-color: blanchedalmond; padding: 0 10px; color: black;">Comment</strong></p>
		<p style="color: rgb(57, 57, 57); font-size: 14px;">&#10003 댓글 쓰기</p>
		<form>
				<input type="hidden" id="bid" value="${info.getBId() }">
				<input type="hidden" id="id" value="${loginUser.userId }">
			<textarea id="text" rows="3" cols="110" ></textarea>
			<button id="addBtn" style="height: 80px; width: 60px; float: right;">등록</button>
		</form>
		<div style="clear: both; margin: 10px 0; padding: 20px;">
			<c:choose>
			<c:when test="${comment != null }">
				<c:forEach var="comm" items="${comment }">
					<div id="div_${comm.coId }">
						<hr>
						<button id="delBtn" onclick="delBtn(${comm.coId })" style="float: right; font-size: 12px; margin: 0 5px;">삭제</button>
						<p ><strong>${comm.userId }</strong> &nbsp &nbsp &nbsp &nbsp <small style="font-size: 7px;">
						<fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${comm.coDate }"/></small></p>
						<p style="clear: both;">${comm.coBody }</p>
					</div>
				</c:forEach>
			</c:when>
			<c:when test="${comment == null }">
				<hr>
				<p>등록된 댓글이 없습니다</p>
			</c:when>
			</c:choose>
		</div>
	</div>

</div>

<script>
// 삭제 기능
function delBtn(coId) {
	fetch('commentsRemoveAjax.do?coid=' + coId)
		.then(resolve => resolve.json()) // {"retCode": "Success"} -> {retCode: "Success"}
		.then(result => {
			console.log(result)
			if (result.retCode == 'Success') {
				document.querySelector('#div_' + coId).remove();
			} else if (result.retCode == 'Fail') {
				alert('error....')
			}
		})
		.catch(reject => console.error(reject))
}

// 등록 할 값 받아오기
document.getElementById('addBtn').addEventListener('click',function(e){
console.log(document.getElementById('addBtn'));
	e.preventDefault();
	
	let bid = document.querySelector('#bid').value;
	let id = document.querySelector('#id').value;
	let text = document.querySelector('#text').value;
	
	if(!id || !text){
		alert("댓글 내용을 입력하세요");
		return;
	}
	
// ajax 호출해서 등록 실행시키기
fetch('commentsAdd.do',{
	method: 'post',
	headers:{'Content-type': 'application/x-www-form-urlencoded'},
	body: 'bid='+bid+'&id='+id+'&text='+text
})
.then(resolve=>resolve.json())
.then(result=>{
	console.log(result);
	if(result.retCode=='Success'){
		alert('댓글이 등록되었습니다');
/* 		makeTr(result.member); */
		initField();
	} else if (result.retCode=='Fail'){
		alert('댓글작성중 에러가 발생하였습니다.');
	}
})
.catch(reject=>console.error(reject));
}); 

// 댓글 만들기
// function makeComm(member={}) {
// 	let div = document.createElement('div');
// 	div.appendChild(document.createElement('hr'));

// 	var x = document.createElement("P");
//     var t = document.createTextNode("<strong>"+this.userId+"</strong> &nbsp &nbsp &nbsp &nbsp <small style=\"font-size: 7px;\">댓글 작성 날짜 및 시간</small>)");
//     x.appendChild(t);
//     div.appendChild(x);

// 	let delBtn = document.createElement('button');
// 	delBtn.innerText ='삭제';
// 	delBtn.classList.add('commDel');

// 	delBtn.addEventListener('click', function(){
// 	let delId = this.parentElement.parentElement.children[0].innerText;
// 	fetch('commentsRemoveAjax.do',{
// 		method : 'post',
// 		headers : {'Content-Type' : 'applicaton/x-www-form-urlencoded'},
// 		body : 'coid='+delId
// 	})
// 	.then(resolve=>resolve.json())
// 	.then(result=> {
// 		console.log(result);
// 		if(result.retCode == 'Success'){
// 			alert('성공!');
// 			this.parentElement.parentElement.remove();

// 		} else if(result.retCode =='Fail'){
// 			alert('실패');
// 		}
// 	})
// 	.catch(reject=>console.log(reject));
// });

// 	div.appendChild(delBtn);
// 	document.body.appendChild(div);
// }
	
/* //tr 생성
function makeTr(member={}) {
let tr = document.createElement('tr');
for(let prop in member){
	let td = document.createElement('td');
	td.innerText = member[prop];
	tr.append(td);
}

let delBtn = document.createElement('button');
delBtn.innerText ='삭제';
 
delBtn.addEventListener('click', function(){
	let delId = this.parentElement.parentElement.children[0].innerText;
	fetch('commentsRemoveAjax.do',{
		method : 'post',
		headers : {'Content-Type' : 'applicaton/x-www-form-urlencoded'},
		body : 'coid='+delId
	})
	.then(resolve=>resolve.json())
	.then(result=> {
		console.log(result);
		if(result.retCode == 'Success'){
			alert('성공!');
			this.parentElement.parentElement.remove();

		} else if(result.retCode =='Fail'){
			alert('실패');
		}
	})
	.catch(reject=>console.log(reject));
});
	let td = document.createElement('td');
	td.append(delBtn);
	tr.append(td); 
document.getElementById('list').append(tr);
}	*/
		
function initField(){
document.getElementById('text').value='';
} 


</script>
