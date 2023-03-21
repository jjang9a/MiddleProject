<%@page import="co.start.vo.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
	PageDTO paging = (PageDTO) request.getAttribute("page");
%>
	
	<h3>여행 후기 게시판</h3>
	<hr>
	<c:if test="${loginUser != null }">
		<a href="travelBoardWrite.do">글쓰기</a>
	</c:if>
<%-- 	<table class="table">
		<thead>
			<tr><th>글번호</th><th>작성자</th><th>제목</th><th>조회수</th><th>작성일자</th></tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${list }">
				<tr><td>${vo.bId }</td>
				<td>${vo.userId }</td>
				<td><a href='noticeSearch.do?nid=${vo.bId }'>${notice.bTitle }</a></td>
				<td>${vo.bCount }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd- hh:mm:ss" value="${vo.bWritedate }"/> </td>
			</tr>
			</c:forEach>
		</tbody>
	</table> --%>
	
	<div class="center">
  		<div class="pagination">
  			<c:if test="${page.prev }">
				<a href='noticeList.do?page=${page.startPage -1 }'> &laquo; </a>
  			</c:if>
  			<c:forEach begin="${page.startPage }" end="${page.endPage }" var="i"> <!-- step 따로 선언 안하면 증가치 자동 1 -->
  				<c:choose>
  					<c:when test="${i == page.page }">
  						<a class = "active" href ="noticeList.do?page=${i }">${i }</a>
  					</c:when>
  					<c:otherwise>
  						<a href ="noticeList.do?page=${i }">${i }</a>
  					</c:otherwise>
  				</c:choose>
  			</c:forEach>
			<c:if test="${page.next }">
				<a href='noticeList.do?page=${page.endPage +1 }'> &raquo; </a>
			</c:if>
		</div>
	</div>