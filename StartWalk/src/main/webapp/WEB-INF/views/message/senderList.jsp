<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../mypage/sidebar.jsp" %>

<!-- 목록시작 -->            
	<div style="float: left; margin-bottom: 50px; margin-top: 40px; padding: 5px 40px;">
		<h3> 쪽지함 </h3>
		<hr>
		<div align="right"><input class="btn btn-primary" type="submit" value="쪽지 보내기" onclick="openPopUp()"></div>
		<h5 style="margin-bottom : 30px; margin-top : 40px">보낸쪽지함</h5>      
		<table class="table" style="width: 720px; margin:auto; margin-bottom:20px;">
			<thead>
				<tr style="text-align : center;">
					<th>받는 사람</th>
					<th>내 용</th>
					<th>보낸 날짜</th>
				<tr>
			</thead>
			<tbody>
				<c:forEach var="message" items="${list }">
					<tr>
						<td style="padding-left:25px">${message.getDmReceiver() }</td>
						<td style="padding-left:25px"><a href='senderSearch.do?dmId=${message.getDmId() }'>${message.getDmBody() }</a></td>
						<td style="text-align : center;"><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${message.getDmDate() }" /></td>
					</tr>
				</c:forEach>
				</table>
			
			
			<h5 style="margin-bottom : 30px; margin-top : 60px">받은 쪽지함</h5>	
			<table class="table" style="width: 720px; margin:auto;">	
			<thead>
				<tr style="text-align : center;">
					<th>보낸 사람</th>
					<th>내 용</th>
					<th>보낸 날짜</th>
				<tr>
			</thead>
			
				<c:forEach var="msg" items="${list2 }">
					<tr>
						<td style="padding-left:25px">${msg.getDmSender() }</td>
						<td style="padding-left:25px"><a href='senderSearch.do?dmId=${msg.getDmId() }'>${msg.getDmBody() }</a></td>
						<td style="text-align : center;"><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${msg.getDmDate() }" /></td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot style="border-bottom: 5px solid black;"/>
		</table>
		</div>
</div>
<div style="clear: both; height:80px;">		
</div>
</div>
<<<<<<< HEAD
</div>
=======
	
<script>
function openPopUp() {
	// 함수 동작 테스트 
	//alert("팝업 테스트");
	
	//window.open("[팝업을 띄울 파일명 path]", "[별칭]", "[팝업 옵션]")
	 window.open("writeMsgForm.do", "Message", "width=400, height=360, top=150, left=200");
}
</script>
>>>>>>> branch 'master' of https://github.com/jjang9a/StartWalk.git
