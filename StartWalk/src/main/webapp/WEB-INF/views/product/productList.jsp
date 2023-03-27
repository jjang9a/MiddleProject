<%@page import="co.start.vo.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%
 PageDTO paging = (PageDTO) request.getAttribute("page");
 %>   
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#sideBanner {  top:50px; right:300px; width:100px; height:400px; background:#aaa; padding-top:50px; margin-top:50px;}

.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: orange;
  color: white;
  border: 1px solid orange;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

</style>
</head>
<body>


    
    

<div class="container-xxl py-5" >
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Spring Season</h6>
                    <h1 class="mb-5"><span class="text-primary text-uppercase">BEST</span>상품</h1>
                </div>
                    <div class="row g-4">
                        <c:forEach var="product" items="${product}">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s" >
                        <div class="room-item shadow rounded overflow-hidden" >
                            <div class="position-relative">
                                <img class="img-fluid" src="./upload/${product.prImg}" alt="빵 " style="width: 360px; height: 240px;">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">${product.pdPrice }원</small>
                            </div>                    
                            <div class="p-4 mt-2" >
                             <div class="d-flex justify-content-between mb-3">
                                <h5 class="mb-0">${product.pdName}</h5>
                                    
                                </div>
                                <div class="d-flex justify-content-between">
                                    <a class="btn btn-sm btn-primary rounded py-2 px-4" href="productInfo.do?pdId=${product.pdId }">상세 설명</a>
                                    <button class="btn btn-sm btn-dark rounded py-2 px-4" id="submitBtn" onclick="cartBtn(${product.pdId })">장바구니 및 결제</button>
                                </div>
                            </div>
                        	</div>
                            </div>
                          </c:forEach>
                          </div>
                        </div>
                        </div>
        
        <div class="center">
  		<div class="pagination">
  			<c:if test="${page.prev }">
				<a href='productList.do?page=${page.startPage -1 }'> &laquo; </a>
  			</c:if>
  			<c:forEach begin="${page.startPage }" end="${page.endPage }" var="i"> <!-- step 따로 선언 안하면 증가치 자동 1 -->
  				<c:choose>
  					<c:when test="${i == page.page }">
  						<a class = "active" href ="productList.do?page=${i }">${i }</a>
  					</c:when>
  					<c:otherwise>
  						<a href ="productList.do?page=${i }">${i }</a>
  					</c:otherwise>
  				</c:choose>
  			</c:forEach>
			<c:if test="${page.next }">
				<a href='productList.do?page=${page.endPage +1 }'> &raquo; </a>
			</c:if>
		</div>
	</div>

<script>
function cartBtn(pdId) {
	fetch('cartAdd.do?pdid=' + pdId)
		.then(resolve => resolve.json()) // {"retCode": "Success"} -> {retCode: "Success"}
		.then(result => {
			console.log(result)
			if (result.retCode == 'Success') {
				alert('장바구니 추가 완료!')
			} else if (result.retCode == 'Fail') {
				alert('error....')
			}
		})
		.catch(reject => console.error(reject))
}
</script>
        
          
    </body>
</html>