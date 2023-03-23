<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		
		<!-- 공지사항 목록 start -->
		<div style="margin: 100px auto 100px auto; width: 1000px; ">
            <hr style="margin-top: 120px; margin-bottom: 0;">
            
            <c:if test="${loginUser.userGrade.equals('admin') }">
				<a href="noticeAddForm.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin:10px 0;">글쓰기	</a>
			</c:if>
            
            
            <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">고객센터</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                     <a href="" style="color:black;">공지사항</a>
                    <hr>
                     <a href="" style="color:black;">자주 묻는 질문(FAQ)</a>
                    <hr>
                     <a href="" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                    <hr>
                     <a href="" style="color:black;">연락처 &#183; 위치 안내</a>
                    
                 </div>
            </div>
            <div style="float: left; margin-bottom: 50px; padding: 5px 40px;">
                <h5 style="font-size: 23px;">공지사항</h5>
                
                <div style="margin-top: 20px;">
                	<table style="border-top: 3px solid black; border-bottom: 1px solid black; padding: 5px; width: 720px;">
                		<thead style="text-align: center; background-color: rgb(194, 188, 188); color: black;">
                		<tr>
                			<th>제목</th>
                			<th>작성자</th>
                			<th style="width: 180px;">작성일</th>
                		</tr>              		
                		</thead>
                		<tbody>
                			
                			<c:forEach var="n" items="${list}">
                				<tr>
                					<td style="padding: 8px 0 8px 15px;"><a href="noticeInfo.do?bTitle=${n.getBTitle()}" style="color:black; font-weight: 700">${n.getBTitle()}</a></td>
                					<td style="text-align: center;">관리자</td>
                					<td style="text-align: center;"><fmt:formatDate value="${n.getBWriteDate()}" type="both" pattern="yyyy-MM-dd HH:mm" /> </td>
                				</tr>
                			</c:forEach>
                			
                		</tbody>
                		<tfoot style="border-bottom: 5px solid black;">
                		</tfoot>
                	</table>
                </div>
            </div>
            
            

            <div style="clear: both;">
            	<div>
            		<p style="padding: 20px 30px; margin-left: 220px; margin-top: 20px; background-color: beige;">시스템 담당자: 권순덕(053-123-4567)</p>
            	</div> 
            </div>

		</div>
        <!--공지사항 목록 end -->