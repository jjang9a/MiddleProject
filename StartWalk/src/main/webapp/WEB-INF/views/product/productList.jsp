<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#sideBanner {  top:50px; right:300px; width:100px; height:400px; background:#aaa; padding-top:50px; margin-top:50px;}
</style>
</head>
<body>


    
    

<div class="container-xxl py-5" >
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Spring Season</h6>
                    <h1 class="mb-5"><span class="text-primary text-uppercase">BEST</span> 여행 패키지 상품</h1>
                </div>
                    
                        <c:forEach var="product" items="${product}">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s" >
                        <div class="room-item shadow rounded overflow-hidden" >
                            <div class="position-relative">
                                <img class="img-fluid" src="./img/${product.prImg}" alt="빵 " style="width: 360px; height: 240px;">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">${product.pdPrice }</small>
                            </div>                    
                            <div class="p-4 mt-2" >
                             <div class="d-flex justify-content-between mb-3">
                                <h5 class="mb-0">${product.pdName}</h5>
                                    
                                </div>
                                <div class="d-flex justify-content-between">
                                    <a class="btn btn-sm btn-primary rounded py-2 px-4" href="">상세 설명</a>
                                    <a class="btn btn-sm btn-dark rounded py-2 px-4" href="">예약 및 결제</a>
                                </div>
                            </div>
                        	</div>
                            </div>
                          </c:forEach>
                        </div>
                        </div>
             <div class="sidebar one_quarter"> 
      <!-- ################################################################################################ -->
      <div id ="sideBanner">

      
      <h6>Lorem ipsum dolor</h6>
      
        <ul>
          <li style="list-style:none;"><a href="#">Navigation - Level 1</a></li>
              
                
           <li style="list-style:none;"><a href="#">Navigation - Level 1</a></li>
           <li style="list-style:none;"><a href="#">Navigation - Level 1</a></li>
           <li style="list-style:none;"><a href="#">Navigation - Level 1</a></li>
           <li style="list-style:none;"><a href="#">Navigation - Level 1</a></li>
          
          
              
            </ul>
         
            <div >
                <p>페이징</p>
            </div>
     
      </div>
    </div>
    </body>
</html>