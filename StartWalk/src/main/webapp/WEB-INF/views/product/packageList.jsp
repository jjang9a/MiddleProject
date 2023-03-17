<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		
		<!-- 지역별 여행패키지 목록 start -->
        <div style="margin: 100px auto 100px auto; width: 1000px; ">
            <h3>서울 경기</h3>
            <hr>
            <h5>상품 <span style="color: blue;">${fn:length(list) }</span>개</h5>
            <hr>
            <div>
               <p style="text-align: right;">|&nbsp <a href="#" style="color:black;">출발일 순</a> &nbsp | &nbsp <a href="#" style="color:black;">가격순</a> &nbsp |</p>
            </div>
            <hr>
            <div style="width: 200px; float: left;">
                <a href="" style="color:black;">서울 경기</a>
                <hr>
                 <a href="" style="color:black;">충청 강원도</a>
                <hr>
                 <a href="" style="color:black;">경상도</a>
                <hr>
                 <a href="" style="color:black;">전라도</a>
                <hr>
                 <a href="" style="color:black;">제주도</a>
                <hr>
            </div>
            <div style="float: left; margin-bottom: 50px;">
                <table style="margin-left:40px">
                
                <c:forEach var="o" items="${list }">
					<tr id="packDetail" style="padding: 5px; margin: 10px;">
						<td  style="width: 200px; height: 150px;">
							<img alt="img" src="img/${o.prImg }" style="width: 200px; height: 150px;">
						</td>
						<td style="width: 550px; height: 150px; padding: 10px;">
							<p>&#91 ${o.pdType } ${o.pdId }&#93  ${o.pdName }</p>
                            
                            <c:choose>
                            	<c:when test="${o.pdSale == 0 }">
                            		<p><fmt:setLocale value="ko_kr"/>
                            		<fmt:formatNumber value="${o.pdPrice }" type="currency"/></p>
                            	</c:when>
                            	<c:otherwise>
                            		<p>
	                            		<fmt:setLocale value="ko_kr"/><del><fmt:formatNumber value="${o.pdPrice }" type="currency"/></del>  
	                            		<strong style="color: red;"><fmt:setLocale value="ko_kr"/> <fmt:formatNumber value="${o.pdSale }"/></strong>
                            		</p>
                            	</c:otherwise>
                            </c:choose>
                            
							<p>출발: <fmt:formatDate value="${o.pdStart }" type="both" pattern="yyyy-MM-dd E요일"/>  | 도착: <fmt:formatDate value="${o.pdEnd }" type="both" pattern="yyyy-MM-dd E요일"/></p>
						</td>
					</tr>                
                </c:forEach>
                
                    
                </table>
            </div>
        
            <div style="clear: both;">
               <p style="text-align: center; margin-top: 20px;">페이징</p> 
            </div>

        </div>
        <!-- 지역별 여행패키지 목록 end -->
        
        
