<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../mypage/sidebar.jsp" %>
		
		<!-- 공지사항 목록 start -->
            
		<div style="margin: 100px auto 100px auto; width: 1000px; ">
            <hr style="margin-top: 120px; margin-bottom: 0;">
            <c:if test="${loginUser.getUserId().equals('user') }">
				<a href="scRemove.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 10 10px; padding:10px;">삭제</a>
			</c:if>
            
           
            	
            <div style="float: left; margin-bottom: 0 auto 50px atuo; padding: 5px 40px; width:800px;">
                <h5 style="font-size: 23px;">받은쪽지(Q&#38;A)</h5>
                <div style="margin-top:50px;">
                	<h5> &#91; ${sd.getDmId()} &#93;</h5>
                	<p>${sd.getReceiver()}</p>
                	<hr>
                	<p>${sd.getDmBody() }</p>			
            	</div>
            </div>

            <div style="clear: both; ">
            	<div>
            		<p style="padding: 20px 30px; margin-left: 220px; margin-top: 20px; background-color: beige;">시스템 담당자: 고대준(010-9824-5252)</p>
            	</div> 
            </div>

		
	</div>	
	
      
	
	
	
	
		