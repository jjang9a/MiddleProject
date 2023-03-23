<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../mypage/sidebar.jsp" %>

<div style="float: left; margin-bottom: 50px;">
			<table style="margin-left:40px">

			
				<tr id="packDetail" style="padding: 5px; margin: 10px;">
					<td style="width: 200px; height: 150px;">
						이미지 style="width: 200px; height: 150px;"
					</td>
					<td style="width: 550px; height: 150px; padding: 10px;">
						<a href="packageInfo.do?pdId=${o.pdId}" style="color: black;">
							<p>&#91; ${o.pdType } ${o.pdId }&#93; ${o.pdName }</p>
						</a>

						
								<p>
									주문일자
								</p>
								<p>
									결제금액
								</p>
								<p>
									배송상태
								</p>
							
						
					</td>
				</tr>
			

		</table>
</div>
<div style="clear: both;"></div>