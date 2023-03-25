<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../mypage/sidebar.jsp" %>

<div style="float: left; margin-bottom: 50px;">
	

	
	<div style="margin: 40px 30px; width:700px;">
		<h3>주문 내역</h3>		
	</div>
		<c:if test="${status.contains('결제대기')==true}">
			<c:forEach var="status" items="${status }">
				<p>${status.statusCount }</p>
			</c:forEach>
		</c:if>
		
		<c:choose>
			<c:when test="${loginUser.getUserId()!= null}">
				<div>
                <div class="row g-3 pb-4" style="margin-left: 30px;">
                
                	<c:forEach var="status" items="${status }">
                		<c:choose>
                			<c:when test="${status.orderStatus eq '결제대기' }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">${status.statusCount }</h2>
		                					<p class="mb-0">결제대기</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                			<c:when test="${status.orderStatus == null }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">0</h2>
		                					<p class="mb-0">결제대기</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                			                			
                			<c:when test="${status.orderStatus eq '결제완료' }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">${status.statusCount }</h2>
		                					<p class="mb-0">결제완료</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                			<c:when test="${status.orderStatus == null }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">0</h2>
		                					<p class="mb-0">결제완료</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                		
                			<c:when test="${status.orderStatus eq '배송전' }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">${status.statusCount }</h2>
		                					<p class="mb-0">배송전</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                			<c:when test="${status.orderStatus == null }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">0</h2>
		                					<p class="mb-0">배송전</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                		
                			<c:when test="${status.orderStatus eq '배송중' }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">${status.statusCount }</h2>
		                					<p class="mb-0">배송중</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                			<c:when test="${status.orderStatus == null }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">0</h2>
		                					<p class="mb-0">배송중</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                		
                			<c:when test="${status.orderStatus eq '배송완료' }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">${status.statusCount }</h2>
		                					<p class="mb-0">배송완료</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>
                			<c:when test="${status.orderStatus == null }">
		                		<div style="width: 150px;" data-wow-delay="0.1s">
		                			<div class="border rounded p-1">
		                				<div class="border rounded text-center p-4">
		                					<img src="" alt="" style="width: 40%; height: 40%;">
		                					<h2 class="mb-1" data-toggle="counter-up">0</h2>
		                					<p class="mb-0">배송완료</p>
		                				</div>
		                			</div>
		                		</div>			                		
                			</c:when>                			                			                			                			
                		</c:choose>
                	</c:forEach>
                	

                </div>	
			</div>
			</c:when>
			</c:choose>
								
			
			<div style="margin-left: 40px;">
				<hr>
			</div>
	<div style="margin-left:30px; margin-top:0; padding:10px;"></div>
	<table style="margin-left:40px;">
		
		<c:choose>
			<c:when test="${loginUser.getUserId()!= null}">
				<c:forEach var="order" items="${list }">
					<c:choose>
					<c:when test="${order.pdId == null}">				
						<div style="background-color: rgb(208, 207, 207); margin-left:50px; padding: 70px 0;">
							<p style="margin: 0; text-align: center; font-size: 20px; font-weight: 700;">구매하신 상품이 없습니다.</p>
						</div>
					</c:when>					
					<c:when test="${loginUser.getUserId()== order.getUserId()}">													
					<tr id="packDetail" style="padding: 5px; margin: 10px; border-bottom: 1px solid rgb(208, 208, 208);">
						<td style="width: 180px; height: 110px; padding: 10px;">
							이미지 style="width: 180px; height: 110px; "
						</td>
						<td style="width: 440px; height: 150px; padding: 10px;">
							<input type="hidden" name="pdId" value="${order.pdId }">
							<p>&#91; ${order.pdType } ${order.pdId } &#93; ${order.pdName }</p>						
							<p><fmt:formatDate value="${order.orderDate }" type="both" pattern="yyyy-MM-dd HH:MM" /></p>
							<c:choose>
								<c:when test="${order.pdSale != 0}">
								<p>${order.pdSale }</p>
								</c:when>
								<c:otherwise>
								<p>${order.pdPrice }</p>
								</c:otherwise>
							</c:choose>
							
							<p>${order.orderStatus }</p>
						</td>
						<td>
							<a href="addReviewForm.do?pdId=${order.pdId }" class="btn btn-sm btn-primary rounded py-2 px-4">리뷰쓰기</a> 
						</td>
					</tr>
					</c:when>

					</c:choose>
				</c:forEach>				
			</c:when>
			<c:otherwise>
				<div style="background-color: rgb(208, 207, 207); margin-left:50px; padding: 70px 0;">
					<p style="margin: 0; text-align: center; font-size: 20px; font-weight: 700;">구매목록은 로그인 후 확인 가능합니다.</p>
				</div>	
			</c:otherwise>
		</c:choose>


	</table>
	
	<div style="clear: both; margin: 10px auto;">
		<div style="width: 700px; margin: 0 auto; text-align: center;">
			<c:if test="${page.prev }">
				<a href="orderList.do?page=${page.startPage - 1 }" style="color: black;"> &laquo; &nbsp; </a>
			</c:if>

			<c:forEach begin="${page.startPage }" end="${page.endPage }" var="i">
				<c:choose>
					<c:when test="${i == page.page }">
						<a class="active" href="orderList.do?page=${i }"style="color: black; background-color: blanchedalmond; padding: 2px; border-radius: 20%; text-align: center; margin:5px;">
						&nbsp; ${i } &nbsp;</a>
					</c:when>
					<c:otherwise>
						<a href="orderList.do?page=${i }"
							style="color: black; background-color: blanchedalmond; padding: 2px; border-radius: 20%; text-align: center; margin:5px;">
							&nbsp; ${i } &nbsp;</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${page.next }">
				<a href="orderList.do?page=${page.endPage + 1 }" style="color: black;"> &nbsp; &raquo; </a>
			</c:if>
		</div>
	</div>
	
</div>

<div style="clear: both; margin: 20px auto;">
	
</div>
</div>