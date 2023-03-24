<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; ">
<!-- 사이드바 -->
		  <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">관리자 모드</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                     <a href="" style="color:black;">공지사항</a>
                    <hr>
                     <a href="scWriteForm.do" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                    <hr>
                 </div>
            </div>
<!-- 사이드바 종료 -->            


      
<!-- 목록시작 -->            
	<div style="float: left; margin-bottom: 50px; padding: 5px 40px;">
		<h3> 쪽지 보내기 </h3>
		<hr>
		<div align="right"><a href ="scWriteForm.do"><input class="btn btn-primary" type="submit" value="글쓰기"></a></div>      
		<table class="table" style="width: 720px; margin:auto">
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
						<td><a href='scSearch.do?bId=${board.getBId() }'>${board.getBTitle() }</a></td>
						<td>${board.getBContents() }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
								value="${board.getBWriteDate() }" /></td>
					</tr>
				</c:forEach>
				
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
<div style="clear: both;">		
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