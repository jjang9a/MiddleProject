<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid page-header mb-5 p-0"
	style="background-image: url(img/carousel-1.jpg);">
	<div class="container-fluid page-header-inner py-5">
		<div class="container text-center pb-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">지역 명물</h1>

		</div>
	</div>
</div>
<!-- Page Header End -->


<!-- Booking Start -->

<!-- Booking End -->


<!-- Booking Start -->
<div class="container-xxl py-5">
	<div class="container">
		<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
			<h6 class="section-title text-center text-primary text-uppercase">${info.pdName }</h6>
			<h1 class="mb-5">
				<span class="text-primary text-uppercase"></span>
			</h1>
		</div>
		<div class="row g-5">
			<div class="col-lg-6">
				<div class="row g-3">
					<div class="col-6 text-end">
						<img class="img-fluid rounded w-75 wow zoomIn"
							data-wow-delay="0.1s" src="./upload/${info.prImg}"
							style="margin-top: 25%;">
					</div>
					<div class="col-6 text-start">
						<img class="img-fluid rounded w-100 wow zoomIn"
							data-wow-delay="0.3s" src="./upload/${img.get(0).imgFile }">
					</div>
					<div class="col-6 text-end">
						<img class="img-fluid rounded w-50 wow zoomIn"
							data-wow-delay="0.5s" src="./upload/${img.get(1).imgFile }">
					</div>
					<div class="col-6 text-start">
						<img class="img-fluid rounded w-75 wow zoomIn"
							data-wow-delay="0.7s" src="./upload/${img.get(2).imgFile }">
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
					<form>
						<div class="row g-3">
							<div class="col-md-6">
								<div class="form-floating">
									<input type="hidden" class="form-control" name="pdid" id="pdid"
										value="${info.pdId}" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating">
									<input type="hidden" class="form-control" id="emaddl">
									<label for="text"></label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating date" id="date3"
									data-target-input="nearest">
									<input type="hidden" class="form-control datetimepicker-input"
										id="checkin" placeholder="Check In" data-target="#date3"
										data-toggle="datetimepicker" />가격: ${info.pdPrice}원
								</div>
							</div>


							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control" placeholder="Special Request"
										id="message" style="height: 100px"></textarea>
									<label for="message" type="hidden">${info.pdInfo }</label>
								</div>
							</div>
							<div class="col-12">
								<button class="btn btn-primary w-100 py-3" type="submit">구매하기</button>

								<button class="btn btn-primary w-100 py-3" type="button"
									id="submitBtn">장바구니</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
let pdid = document.querySelector('#pdid').value;
document.querySelector('#submitBtn').addEventListener('click', function(){
fetch('cartAdd.do', {
	method : 'post',
	headers : {'Content-Type' : 'application/x-www-form-urlencoded'},
	body: 'pdid='+pdid

})
.then(resolve => resolve.json()) // {"id":"user1", "name":"hong" ...}
.then(result => {
	console.log(result);
	if(result.retCode == 'Success'){
		alert('장바구니 추가 완료!');
		
	} else if(result.retCode == 'Fail'){
		alert('실패!');
	}
})
.catch(reject => console.error(reject));
});
</script>
