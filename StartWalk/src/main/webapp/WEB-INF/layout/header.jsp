<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <!-- Header Start -->
        <div class="container-fluid bg-dark px-0" >
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block" style="padding: 0;">

                   

                    <a href="#" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center" style="padding: 0;">

                        <img src="img/logo.png" alt="로고" style="width: 70%; height: 70%; margin: 0;">
                    </a>
                </div>
				<div class="col-lg-9" style="float: right;">
                    <div class="row gx-0 bg-white d-none d-lg-flex" style="padding: 0;">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="d-inline-flex align-items-center py-2"> 
                            </div>

                        </div>
                        <div class="col-lg-5 px-5 text-end" style="padding: 0; margin-bottom: 10px" >
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <c:choose>
                                	<c:when test="${loginUser != null }">
                                		<a href="logout.do"><p class="mb-0"> ${loginUser.userId }님 환영합니다 | &nbsp 로그아웃</p></a>
                                	</c:when>
                                	<c:otherwise>
                                		<img src="img/login.png" alt="로그인" style="width: 25px; height: 25px;">
                                		<a href="loginForm.do"><p class="mb-0">&nbsp 로그인 | &nbsp 회원가입</p></a>
                                	</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="index.html" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">출발</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="main.do" class="nav-item nav-link active">Home</a>
                                <a href="packageList.do" class="nav-item nav-link">여행 패키지</a>

                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">상품 메뉴</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="hotelList.do" class="dropdown-item">숙소 상품</a>
                                        <a href="productList.do" class="dropdown-item">지역 명물</a>
                                    </div>
                                </div>

                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">커뮤니티</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="mateList.do" class="dropdown-item">동행 구해요</a>
                                        <a href="mateInfo.do" class="dropdown-item">동행 후기</a>
                                        <a href="hotelList.do" class="dropdown-item">여행 수기</a>
                                    </div>
                                </div>

                                <a href="userUpdateCheck.do" class="nav-item nav-link">마이페이지</a>
                                <a href="noticeList.do" class="nav-item nav-link">고객센터</a>
                                <a href="contact.html" class="nav-item nav-link">관리모드</a>
                            </div>


                          


                            <a href="cart.do" class="btn btn-primary rounded-0 py-4 px-md-5 d-none d-lg-block" style="width: 200px; padding: 0;"> <img src="img/cart.png" alt="장바구니" style="width: 25%; height: 25%;">&nbsp 장바구니</a>



                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->