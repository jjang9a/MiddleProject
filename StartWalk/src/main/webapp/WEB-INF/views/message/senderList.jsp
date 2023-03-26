<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../mypage/sidebar.jsp" %>

<div style="margin: 100px auto 100px auto; width: 1000px; ">

<!-- 목록시작 -->            
	<div style="float: left; margin-bottom: 50px; padding: 5px 40px;">
		<h3 style=""> 쪽지함 </h3>
		<hr>
		<div align="right"><a href =""><input class="btn btn-primary" type="submit" value="글쓰기"></a></div>
		<h5>보낸쪽지함</h5>      
		<table class="table" style="width: 720px; margin:auto">
			<thead>
				<tr>
					<th>쪽지번호</th> 
					<th>받는 사람</th>
					<th>내용</th>
					<th>작성일</th>
				<tr>
			</thead>
			<tbody>
				<c:forEach var="message" items="${list }">
					<tr>
						<td>${message.getDmId() }</td> 
						<td><a href='senderSearch.do?dmId=${message.getDmId() }'>${message.getDmSender() }</a></td>
						<td>${message.getDmReceiver() }</td>
						<td>${message.getDmBody() }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
								value="${message.getDmDate() }" /></td>
					</tr>
				</c:forEach>
				</table>
			
			
			<h5>받은 쪽지함</h5>	
			<table class="table" style="width: 720px; margin:auto">	
			<thead>
				<tr>
					<th>쪽지번호</th> 
					<th>보낸사람</th>
					<th>내용</th>
					<th>작성일</th>
				<tr>
			</thead>
			
				<c:forEach var="msg" items="${list2 }">
					<tr>
						<td>${msg.getDmId() }</td> 
						<td><a href='senderSearch.do?dmId=${msg.getDmId() }'>${msg.getDmReceiver() }</a></td>
						<td>${msg.getDmReceiver() }</td>
						<td>${msg.getDmBody() }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
								value="${msg.getDmDate() }" /></td>
					</tr>
				</c:forEach>
				
			</tbody>
			<tfoot style="border-bottom: 5px solid black;"/>
		</table>
		</div>
</div>
<div style="clear: both;">		
</div>
</div>
