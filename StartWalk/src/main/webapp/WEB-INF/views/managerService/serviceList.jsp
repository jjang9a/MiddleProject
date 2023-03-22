<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

		  <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">관리자 모드</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                     <a href="" style="color:black;">공지사항</a>
                    <hr>
                     <a href="" style="color:black;">자주 묻는 질문(FAQ)</a>
                    <hr>
                     <a href="scWriteForm.do" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                    <hr>
                     <a href="" style="color:black;">연락처 &#183; 위치 안내</a>
                    
                 </div>
            </div>

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
						<td><a href='scSearch.do?bId=${board.getBId() }'>${board.getBTitle() }</a></td>
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