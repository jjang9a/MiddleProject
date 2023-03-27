<%@page import="co.start.vo.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: orange;
  color: white;
  border: 1px solid orange;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

</style>

<%
	PageDTO paging = (PageDTO) request.getAttribute("page");
%>

<div style="margin: 100px auto 100px auto; width: 1000px; ">
	<h3>여행 후기 게시판</h3>
	<hr>
	<c:if test="${loginUser != null }">
		<div align="right"><a href ="travelBoardWriteForm.do"><input class="btn btn-primary"
				                      type="submit" value="글쓰기"></a></div>
	</c:if>
 	<table class="table" style="text-align:center">
		<thead>
			<tr><th>글번호</th><th>제목</th><th>작성자</th><th>조회수</th><th>추천수</th><th>작성일</th></tr>
		</thead>
 		<tbody>
			<c:forEach begin="0" end="${list.size() -1 }" var="i">
				<tr><td>${i+1 }</td>
 				<td style="text-align:left"><a href='travelBoard.do?bid=${list.get(i).getBId() }'>${list.get(i).getBHead() } ${list.get(i).getBTitle() }</a></td>
				<td>${list.get(i).getUserId() }</td>
				<td>${list.get(i).getBCount() }</td>  
				<td>${list.get(i).getBGood() }</td>  
			 	<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${list.get(i).getBWriteDate() }"/> </td>
			</c:forEach>
		</tbody>
	</table>
	
	<div class="center" >
  		<div class="pagination">
  			<c:if test="${page.prev }">
				<a href='travelBoardList.do?page=${page.startPage -1 }'> &laquo; </a>
  			</c:if>
  			<c:forEach begin="${page.startPage }" end="${page.endPage }" var="i"> <!-- step 따로 선언 안하면 증가치 자동 1 -->
  				<c:choose>
  					<c:when test="${i == page.page }">
  						<a class = "active" href ="travelBoardList.do?page=${i }">${i }</a>
  					</c:when>
  					<c:otherwise>
  						<a href ="travelBoardList.do?page=${i }">${i }</a>
  					</c:otherwise>
  				</c:choose>
  			</c:forEach>
			<c:if test="${page.next }">
				<a href='noticeList.do?page=${page.endPage +1 }'> &raquo; </a>
			</c:if>
		</div>
	</div>
</div>