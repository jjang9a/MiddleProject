<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../client/sidebar.jsp"%>
<div style="margin: 30px auto 100px auto; width: 1500px; ">

<!-- 목록시작 -->            
	<div style="float: left; margin-bottom: 50px; padding: 5px 40px;">
		<h3 style="margin-top:20px">1:1 문의 (Q&#38;A)</h3>
		<div align="right"><a href ="scUserWriteForm.do"><input class="btn btn-primary" type="submit" value="글쓰기"></a></div>      
		<table class="table" style="width: 600px; margin:auto">
			<thead>
				<tr>
					<th>No.</th> 
					<th>작성자</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성일</th>
				<tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${list }">
					<tr>
						<td>${board.getBId() }</td> 
						<td>${board.getUserId() }</td>
						<td><a href='scSearch.do?bId=${board.getBId() }'>${board.getBTitle() }</a></td>
						<td>${board.getBContents() }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
								value="${board.getBWriteDate() }" /></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot style="border-bottom: 5px solid black;"/>
		</table>
		</div>
</div>
	</div>
<div style="clear: both;">		
</div>