<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
<c:forEach var="bestPackage" items="${bestPackage }" varStatus="status">

                    <c:choose>
                    <c:when test="${status.first }">
						<div class="carousel-inner">
							<div class="carousel-item active">  
								<img class="w-100" src="./upload/${bestPackage.prImg }" alt="Image" style="height: 700px;">
								<div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
									<div class="p-3" style="max-width: 750px;">
										<h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">BEST 여행 패키지 상품</h6>
										<h1 class="display-3 text-white mb-4 animated slideInDown">${bestPackage.pdName}</h1>
										<a href="packageInfo.do?pdId=${bestPackage.pdId}" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">상세 설명</a>
										<a href="packageList.do" class="btn btn-light py-md-3 px-md-5 animated slideInRight">다른 상품 더보기</a>
									</div>
								</div>
							</div> 
						 </div>					
                    </c:when>
                    <c:when test="${status.index eq 2 }">
	                    <div class="carousel-item">
	                        <img class="w-100" src="./upload/${bestPackage.prImg }" alt="Image" style="height: 700px;">
	                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
	                            <div class="p-3" style="max-width: 750px;">
	                                <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">BEST 여행 패키지 상품</h6>
	                                <h1 class="display-3 text-white mb-4 animated slideInDown">${bestPackage.pdName}</h1>
	                                <a href="packageInfo.do?pdId=${bestPackage.pdId}" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">상세 설명</a>
	                                <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">다른 상품 더보기</a>
	                            </div>
	                        </div>
	                    </div>                    
                    </c:when>
					<c:otherwise>
						<div class="carousel-item">
	                        <img class="w-100" src="./upload/${bestPackage.prImg }" alt="Image" style="height: 700px;">
	                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
	                            <div class="p-3" style="max-width: 750px;">
	                                <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">BEST 여행 패키지 상품</h6>
	                                <h1 class="display-3 text-white mb-4 animated slideInDown">${bestPackage.pdName}</h1>
	                                <a href="packageInfo.do?pdId=${bestPackage.pdId}" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">상세 설명</a>
	                                <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">다른 상품 더보기</a>
	                            </div>
	                        </div>
	                    </div>					
					</c:otherwise>
                    </c:choose>	

                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
                    </c:forEach>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <h6 class="section-title text-start text-primary text-uppercase">About Us</h6>
                        <h1 class="mb-4">일상의 <span class="text-primary text-uppercase">출</span>구가 되는<span class="text-primary text-uppercase">발</span>걸음</h1>
                        <p class="mb-4">저희로 말할 것 같으면 4차 산업시대에 이끌어갈 예담직업학교에서 (디지텅컨버전스)클라우드 기반 Java 개발자 양성과정을 수강중인 차세대 인재들입니다! 현재 예담직업학교 5강의실에서 수련중에 있으며 현재까지 배운 것을 바탕으로 중간프로젝트를 진행했습니다.</p>
                        <br>
                        <br> 
                        <div class="row g-3 pb-4">
                            <div class="col-sm-4 wow fadeIn" data-wow-delay="0.1s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <img src="img/luggage2.png" alt="여행상품" style="width: 40%; height: 40%;">
                                        <h2 class="mb-1" data-toggle="counter-up">${mainCountPackage.countPk }</h2>
                                        <p class="mb-0">여행패키지 상품</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 wow fadeIn" data-wow-delay="0.3s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <img src="img/shopping-basket.png" alt="판매상품" style="width: 40%; height: 40%;">
                                        <h2 class="mb-1" data-toggle="counter-up">${mainCountProduct.countPd }</h2>
                                        <p class="mb-0">숙소 및 지역명물</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 wow fadeIn" data-wow-delay="0.5s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <img src="img/client.png" alt="회원" style="width: 40%; height: 40%;">
                                        <h2 class="mb-1" data-toggle="counter-up">${mainCountUser.countUser }</h2>
                                        <p class="mb-0">회원</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.1s" src="img/about-1.jpg" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.3s" src="img/about-2.jpg">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-50 wow zoomIn" data-wow-delay="0.5s" src="img/about-3.jpg">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.7s" src="img/about-4.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Best 숙소 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Spring Season</h6>
                    <h1 class="mb-5"><span class="text-primary text-uppercase">BEST</span> 숙소</h1>
                </div>
                <div class="row g-4">
            	<c:forEach var="bestHotel" items="${bestHotel }">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" >
                        <div class="room-item shadow rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="./upload/${bestHotel.prImg }" alt="image" style="width: 410px; height: 240px;">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">
                                <fmt:setLocale value="ko_kr" /><fmt:formatNumber value="${bestHotel.pdPrice }" type="currency" />
                                </small>
                            </div>
                            <div class="p-4 mt-2" >
                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">${bestHotel.pdName}</h5>
                                    
                                </div>
                                <div class="d-flex justify-content-between">
									<div style="overflow:hidden;">
										<c:if test="${bestHotel.avg <=1.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestHotel.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${1.49< bestHotel.avg and bestHotel.avg <=2.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestHotel.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${2.49< bestHotel.avg and bestHotel.avg <=3.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestHotel.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${3.49< bestHotel.avg and bestHotel.avg <=4.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestHotel.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${4.49< bestHotel.avg and bestHotel.avg <=5.00}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestHotel.avg }" pattern=".00"/>
										</c:if>					
									</div>                               
                                    <a class="btn btn-sm btn-dark rounded py-2 px-4" href="hotelInfo.do?key=${bestHotel.pdId }">상세 설명</a>
                                </div>
                            </div>
                        </div>
                    </div>
            	</c:forEach>
                </div>
            </div>
        </div>
        <!-- Best 숙소 End -->
        
        <!-- Best 명물 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Spring Season</h6>
                    <h1 class="mb-5"><span class="text-primary text-uppercase">BEST</span> 지역 명물</h1>
                </div>
                <div class="row g-4">
            	<c:forEach var="bestProduct" items="${bestProduct }">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" >
                        <div class="room-item shadow rounded overflow-hidden">
                            <div class="position-relative" style="text-align: center;">
                                <img class="img-fluid" src="./upload/${bestProduct.prImg }" alt="image" style="width: 410px; height: 240px;">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">
                                <fmt:setLocale value="ko_kr" /><fmt:formatNumber value="${bestProduct.pdPrice }" type="currency" />
                                </small>
                            </div>
                            <div class="p-4 mt-2" >
                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">${bestProduct.pdName}</h5>
                                    
                                </div>
                                <div class="d-flex justify-content-between">
                                    									<div style="overflow:hidden;">
										<c:if test="${bestProduct.avg <=1.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestProduct.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${1.49< bestProduct.avg and bestProduct.avg <=2.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestProduct.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${2.49< bestProduct.avg and bestProduct.avg <=3.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestProduct.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${3.49< bestProduct.avg and bestProduct.avg <=4.49}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestProduct.avg }" pattern=".00"/>
										</c:if>
										<c:if test="${4.49< bestProduct.avg and bestProduct.avg <=5.00}">
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											<div class="bi-star-fill" style="float: left;"></div>
											&nbsp;<fmt:formatNumber value="${bestProduct.avg }" pattern=".00"/>
										</c:if>					
									</div>
                                    <a class="btn btn-sm btn-dark rounded py-2 px-4" href="productInfo.do?pdId=${bestProduct.pdId }">상세 설명</a>
                                </div>
                            </div>
                        </div>
                    </div>
            	</c:forEach>
                </div>
            </div>
        </div>        
        <!-- Best 명물 End -->

        


        <!-- 최신 리뷰, 댓글 Start -->
        <div class="container-xxl testimonial my-5 py-5 bg-dark wow zoomIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="owl-carousel testimonial-carousel py-5">
                
                <c:forEach var="mainReviewList" items="${mainReviewList }">
                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden" style="height: 200px;">
                        <p style="color:black;">${mainReviewList.prBody }</p>
                        <div class="d-flex align-items-center">
                           <c:choose>
                           		<c:when test="${mainReviewList.userGrade == 'vip' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/vipGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>
                           		<c:when test="${mainReviewList.userGrade == 'gold' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/goldGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>
                           		<c:when test="${mainReviewList.userGrade == 'silver' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/silverGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>
                           		<c:when test="${mainReviewList.userGrade == 'normal' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/normalGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>                           		                           		                           		
                           </c:choose>
                            <div class="ps-3">
                                <h6 class="fw-bold mb-1">${mainReviewList.userId }</h6>
                                <small>${mainReviewList.userGrade }</small>
                            </div>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                    </div>
                </c:forEach>
                
                <c:forEach var="mainCommentsList" items="${mainCommentsList }">
                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden" style="height: 200px;">
                        <p style="color:black;">${mainCommentsList.coBody }</p>
                        <div class="d-flex align-items-center">
                           <c:choose>
                           		<c:when test="${mainCommentsList.userGrade == 'vip' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/vipGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>
                           		<c:when test="${mainCommentsList.userGrade == 'gold' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/goldGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>
                           		<c:when test="${mainCommentsList.userGrade == 'silver' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/silverGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>
                           		<c:when test="${mainCommentsList.userGrade == 'normal' }">
                           		<img class="img-fluid flex-shrink-0 rounded" src="img/normalGrade.png" style="width: 45px; height: 45px;">
                           		</c:when>                           		                           		                           		
                           </c:choose>                            
                            <div class="ps-3">
                                <h6 class="fw-bold mb-1">${mainCommentsList.userId }</h6>
                                <small>${mainCommentsList.userGrade }</small>
                            </div>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                    </div>                
                </c:forEach>
 
                </div>
            </div>
        </div>
        <!-- 최신 리뷰, 댓글 End -->            

        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Our Team</h6>
                    <h1 class="mb-5">4조 <span class="text-primary text-uppercase"></span></h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-1.jpg" alt="">
                               
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">장가애</h5>
                                <small>조장</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-2.jpg" alt="">
                                
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">구용억</h5>
                                <small>조원</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-3.jpg" alt="">
                                
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">권순덕</h5>
                                <small>조원</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-4.jpg" alt="">
                                
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">고대준</h5>
                                <small>조원</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Newsletter Start -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row justify-content-center">
                
            </div>
        </div>
        <!-- Newsletter Start -->
        

        <!-- Footer Start -->
       
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    