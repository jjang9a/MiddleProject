<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		
		<!-- 공지사항 목록 start -->
            
		<div style="margin: 100px auto 100px auto; width: 1000px; ">
            <hr style="margin-top: 120px; margin-bottom: 0;">
            <c:if test="${loginUser.getUserId().equals('admin') }">
				<a href="scRemove.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 10 10px; padding:10px;">삭제</a>
			</c:if>
            
            <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">관리자 모드</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;">
                     <a href="" style="color:black;">공지사항</a>
                    <hr>
                     <a href="scWriteForm.do" style="color:black;">1:1 문의하기(Q&#38;A)</a>
                    <hr>
                 </div>
            </div>
            	
            <div style="float: left; margin-bottom: 0 auto 50px atuo; padding: 5px 40px; width:800px;">
                <%-- <c:if test="${loginUser.getUserId() ==admin || loginUser.getUserId() == sc.getUserId "> --%>
                <h5 style="font-size: 23px;">1:1문의(Q&#38;A)</h5>
                <div style="margin-top:50px;">
                	<h5> &#91; ${sc.getBTitle()} &#93;</h5>
                	<p>${sc.getBWriteDate()}</p>
                	<hr>
                	<p>${sc.getBContents() }</p>			
            	</div>
				<%-- </c:if>       --%>      
            </div>

            <div style="clear: both; ">
            	<div>
            		<p style="padding: 20px 30px; margin-left: 220px; margin-top: 20px; background-color: beige;">시스템 담당자: 고대준(010-9824-5252)</p>
            	</div> 
            </div>

		
	</div>	
	
      
	
	
	
	
		