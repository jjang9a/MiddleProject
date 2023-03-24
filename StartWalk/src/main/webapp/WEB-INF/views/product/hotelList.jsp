<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
#sideBanner {
	top: 50px;
	right: 300px;
	width: 100px;
	height: 400px;
	background: #aaa;
	padding-top: 50px;
	margin-top: 50px;
}
</style>

<div class="container-xxl py-5">
	<div class="container">
		<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
			<h6 class="section-title text-center text-primary text-uppercase">일상의
				출구가 되는 발걸음</h6>
			<h1 class="mb-5">
				<span class="text-primary text-uppercase">숙소</span>상품
			</h1>
		</div>
		<div class="row g-4">
			<c:forEach var="hotel" items="${hotel}">
				<tr id="p_${hotel.pdId }">
					<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
						<div class="room-item shadow rounded overflow-hidden">
							<div class="position-relative">
								<img class="img-fluid" src="./upload/${hotel.prImg}" alt="빵 "
									style="width: 380px; height: 240px; padding-left: 35px; padding-top: 20px">
								<small
									class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">${hotel.pdPrice }원</small>
							</div>
							<div class="p-4 mt-2">
								<div class="d-flex justify-content-between mb-3">
									<h5 class="mb-0">${hotel.pdName}</h5>

								</div>
								<div class="d-flex justify-content-between">
									<a class="btn btn-sm btn-primary rounded py-2 px-4"
										href="hotelInfo.do?key=${hotel.pdId }">상세 설명</a>
									<button class="btn btn-sm btn-dark rounded py-2 px-4" id="submitBtn" onclick="cartBtn(${hotel.pdId })">장바구니 및 결제</button>
<!-- 									<a class="btn btn-sm btn-dark rounded py-2 px-4" href="">장바구니 및 결제</a> -->
								</div>
							</div>
						</div>
					</div>
				</tr>
			</c:forEach>
		</div>
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