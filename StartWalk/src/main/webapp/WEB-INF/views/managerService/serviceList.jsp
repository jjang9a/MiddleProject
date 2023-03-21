<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  <div class ="container px-6px-lg-5">
<div class="row gx-4 gx-lg-5 justify-content-center">
	<div class="col-md-12 col-lg-10 col-xl-8"> -->
		<table class="table">
			<thead>
				<tr>
					<th>글번호</th>
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
						<%-- 	<td><a href='scSearch.do?bid=${board.bId }'>${board.bTitle }</td> --%>
						<td>${board.getBTitle() }</td>
						<td>${board.getBContents() }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
								value="${board.getBWriteDate() }" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<c:if test="${result !=null }">
		<p>등록 결과 : ${result }</p>
	</c:if>
	<%
	if (request.getAttribute("result") != null) {
	%>
	<p>
		등록 결과 :
		<%=request.getAttribute("result")%></p>
	<%
	}
	%>