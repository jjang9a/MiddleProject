<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../mypage/sidebar.jsp" %>
		
		<!-- 공지사항 목록 start -->
            
		<div style="margin: 100px auto 100px auto; width: 1000px; ">
            <hr style="margin-top: 120px; margin-bottom: 0;">
          
            	
            <div style="float: left; margin-bottom: 0 auto 50px atuo; padding: 5px 40px; width:800px;">
                <h5 style="font-size: 23px;">쪽지</h5>
                <div style="margin-top:50px;">
                	<h5> &#91; 보낸 사람 : ${sd.getDmSender()} &#93;</h5>
                	<h5> &#91; 받는 사람 : ${sd.getDmReceiver()} &#93;</h5>
                	<p>${sd.getDmDate()}</p>
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
	
      
	
	
	
	
		