<%@page import="co.start.vo.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%
 PageDTO paging = (PageDTO) request.getAttribute("page");
 %>   
<!doctype html>
<html lang="en">
  <head>
  	<title>Table 05</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">매칭 게시판</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-responsive-xl">
						  <thead>
						    <tr>
						    	<td align="right" colspan="2"><a href ="mateAddForm.do"><input class="btn btn-primary"
				                      type="submit" value="글쓰기"></a>
						    <tr>
						    	<th>글번호</th>
						    	<th>userId</th>
						      <th>title</th>
						      <th>Status</th>
						      
						    </tr>
						  </thead>
						  <tbody>
						  
						      <c:forEach var="mate" items="${mate}">
						      <tr>
						      <td>						      	<span>${mate.getBId() }</span>
						      </td>
						      <td class="d-flex align-items-center">
						      	<div class="img" style="background-image: url(images/person_1.jpg);"></div>
						      	<div class="pl-3 email">
						      		<span> ${mate.userId}</span>
						      		
						      	</div>
						      </td>
						      <td><a href='mateInfo.do?bTitle=${mate.getBTitle()}'>${mate.getBTitle() }</a></td>
						      <td class="status"><span class="active">${mate.getBMatching() }</span></td>
						      </tr>
						       </c:forEach>
						      
						   
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

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





	</body>
</html>