<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 지역별 여행패키지 목록 start -->
<div style="margin: 100px auto 100px auto; width: 1000px; ">
	<h3>서울 경기</h3>
	<hr>
	<div style="float: left;">
		<h5>상품 <span style="color: blue;">${fn:length(list) }   </span>개</h5>
	</div>
	<c:if test="${loginUser.userGrade.equals('admin') }">
		<a class="btn btn-sm btn-primary rounded py-2 px-4" href="packageAddForm.do" style="float: right; margin-bottom: 18px;">글쓰기</a>
	</c:if>
	<hr style="clear: both;">
	<div>
		<p style="text-align: right;">|&nbsp; <a href="packageList.do?order=start" style="color:black;">출발일 순</a> &nbsp;
			|
			&nbsp; <a href="packageList.do?order=price" style="color:black;">낮은 가격순</a> &nbsp; |</p>
	</div>
	<hr>
	<div style="width: 200px; float: left;">
		<a href="packageList.do?region=서울 경기" style="color:black;">서울 경기</a>
		<hr>
		<a href="packageList.do?region=충청 강원도" style="color:black;">충청 강원도</a>
		<hr>
		<a href="packageList.do?region=경상도" style="color:black;">경상도</a>
		<hr>
		<a href="packageList.do?region=전라도" style="color:black;">전라도</a>
		<hr>
		<a href="packageList.do?region=제주도" style="color:black;">제주도</a>
		<hr>
	</div>
	<div style="float: left; margin-bottom: 50px;">
		<table style="margin-left:40px">

			<c:forEach var="o" items="${list }">
				<tr id="packDetail" style="padding: 5px; margin: 10px;">
					<td style="width: 200px; height: 150px;">
						<img alt="img" src="./upload/${o.prImg }" style="width: 200px; height: 150px;">
					</td>
					<td style="width: 550px; height: 150px; padding: 10px;">
						<a href="packageInfo.do?pdId=${o.pdId}" style="color: black;">
							<p>&#91; ${o.pdType } ${o.pdId }&#93; ${o.pdName }</p>
						</a>

						<c:choose>
							<c:when test="${o.pdSale == 0 }">
								<p>
									<fmt:setLocale value="ko_kr" />
									<fmt:formatNumber value="${o.pdPrice }" type="currency" />
								</p>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${o.pdSale == o.pdPrice }">
										<p>
											<strong style="color: red;">
												<fmt:setLocale value="ko_kr" />
												<fmt:formatNumber value="${o.pdSale }" type="currency"  /></strong>
										</p>
									</c:when>
									<c:otherwise>
										<p>
											<fmt:setLocale value="ko_kr" /><del>
												<fmt:formatNumber value="${o.pdPrice }" type="currency" /></del>
											<strong style="color: red;">
												<fmt:setLocale value="ko_kr" />
												<fmt:formatNumber value="${o.pdSale }" /></strong>
										</p>
									</c:otherwise>
								</c:choose>

							</c:otherwise>
						</c:choose>

						<p>출발:
							<fmt:formatDate value="${o.pdStart }" type="both" pattern="yyyy-MM-dd E요일" /> | 도착:
							<fmt:formatDate value="${o.pdEnd }" type="both" pattern="yyyy-MM-dd E요일" />
						</p>
					</td>
				</tr>
			</c:forEach>

		</table>
	</div>



	<div style="clear: both; margin: 0 auto;">
		<div style="width: 700px; margin: 0 auto; text-align: center;">
			<c:if test="${page.prev }">
				<a href="packageList.do?page=${page.startPage - 1 }" style="color: black;"> &laquo; &nbsp; </a>
			</c:if>

			<c:forEach begin="${page.startPage }" end="${page.endPage }" var="i">
				<c:choose>
					<c:when test="${i == page.page }">
						<a class="active" href="packageList.do?page=${i }"style="color: black; background-color: blanchedalmond; padding: 2px; border-radius: 20%; text-align: center; margin:5px;">
						&nbsp; ${i } &nbsp;</a>
					</c:when>
					<c:otherwise>
						<a href="packageList.do?page=${i }"
							style="color: black; background-color: blanchedalmond; padding: 2px; border-radius: 20%; text-align: center; margin:5px;">
							&nbsp; ${i } &nbsp;</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${page.next }">
				<a href="packageList.do?page=${page.endPage + 1 }" style="color: black;"> &nbsp; &raquo; </a>
			</c:if>
		</div>
	</div>

</div>
<!-- 지역별 여행패키지 목록 end -->