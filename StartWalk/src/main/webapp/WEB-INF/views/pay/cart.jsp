<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div style="margin: 200px 50px;">
	<div class="row px-xl-5">
		<div class="col-lg-8 table-responsive mb-5" style="margin: auto;">
			<h5>여행 상품</h5>
			<a href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">선택 삭제</a> <a
				href="" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">선택
				주문</a><br>
			<br>
			<table class="table table-bordered text-center mb-0">
				<thead class="bg-secondary text-dark">
					<tr>
						<th></th>
						<th colspan="2">제품</th>
						<th>가격</th>
						<th>수량</th>
						<th>총 금액</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody class="align-middle">
					<c:forEach var="i" items="${cart }">
						<tr id="cart_${i.cartId }">
							<td class="align-middle"><input id="check${i.cartId }" name="check" value="${i.pdId }"
									type="checkbox"></td>
							<td class="align-middle"><img src="./upload/${i.prImg }" alt="" style="width: 120px; height:80px;"></td>
							<td class="align-middle">${i.pdName }</td>
							<td class="align-middle">
								<fmt:formatNumber pattern="#,###,###" value="${i.pdPrice }" />원
								<input type="hidden" id="tPrice" name="tPrice" value="${i.pdPrice }"> </td>
							<td class="align-middle">
								<div class="input-group quantity mx-auto" style="width: 100px;">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-minus" id="cartMinus"
											onclick="minusBtn(${i.cartId })">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<input id="tCount" type="text"
										class="form-control form-control-sm bg-secondary text-center"
										value="${i.pdCount }">
									<div class="input-group-btn">
										<button class="btn btn-sm btn-primary btn-plus" id="cartPlus"
											onclick="plusBtn(${i.cartId })">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
								<button type="submit" name="update" style="font-size: 10px">적용</button>
							</td>
							<td class="align-middle" id="tAmount" name="tAmount">
								<fmt:formatNumber pattern="#,###,###" value="${(i.pdPrice*i.pdCount) }" />원</td>
							<td class="align-middle"><button class="btn btn-sm btn-primary" id="delBtn">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<p id="totalAmt"></p>

	</div>
</div>
<!-- Cart End -->
<script>
	function minusBtn(cartId) {
		let cartTr = document.querySelector('#cart_' + cartId);
		cartTr.querySelector('input#tCount').value;
		console.log(cartTr.querySelector('input#tCount').value)
		let cnt = cartTr.querySelector('input#tCount').value;
		let price = cartTr.querySelector('input#tPrice').value;
		cnt--;
		cartTr.querySelector('input#tCount').value = cnt;
		cartTr.querySelector('#tAmount').innerText = cnt * price;

		amountSum();
	}

	function plusBtn(cartId) {
		let cartTr = document.querySelector('#cart_' + cartId);
		cartTr.querySelector('input#tCount').value;
		console.log(cartTr.querySelector('input#tCount').value)
		let cnt = cartTr.querySelector('input#tCount').value;
		let price = cartTr.querySelector('input#tPrice').value;
		cnt++;
		cartTr.querySelector('input#tCount').value = cnt;
		cartTr.querySelector('#tAmount').innerText = (cnt * price);

		amountSum();
	}

	function amountSum() {
		let total = 0;
		document.querySelectorAll('#tAmount').forEach(tamt => {
			console.log(tamt.innerText)
			total += parseInt(tamt.innerText);
		})
		document.querySelector('#totalAmt').innerText = total;
	}
	// 수량 변경
	// document.getElementById('cartMinus').addEventListener('click', function(e) {
	// document.querySelectorAll('#cartMinus').forEach(btn => {
	// 	console.log(btn);
	// 	btn.addEventListener('click', function (e) {
	// 		// console.log(this.parentElement.nextSibling.nextSibling.value--);

	// 		let inputElem = this.parentElement.nextSibling.nextSibling;
	// 		let num = inputElem.value;
	// 		let price = document.querySelector('#tPrice').value
	// 		if ((num - 1) >= 0) {
	// 			num--;
	// 			inputElem.value = num;
	// 			console.log(num);
	// 		} else {
	// 			num = 0;
	// 			inputElem.value = num;
	// 		}
	// 		document.querySelector('#tAmount').value = (price * num)
	// 	});

	// });


	// })
	// document.getElementById('cartPlus').addEventListener('click', function (e) {
	// 	let num = document.querySelector('#tCount').value
	// 	document.querySelector('#tCount').value++;
	// 	num++;
	// 	console.log(num);
	// 	console.log(price * num);
	// 	document.querySelector('#tAmount').value = (price * num)
	// })

	// Ajax
	// 삭제
	/* document.getElementById('delBtn').addEventListener('click', function(){
		let delId = this.parentElement.parentElement.children[0].value;
		console.log(delId);
		// ajax 호출
		fetch('cartDelete.do', {
			method : 'post',
			headers : {'Content-Type' : 'application/x-www-form-urlencoded'}, // key=val&key=val 형식
			body : 'check='+delId
		})
			.then(resolve => resolve.json()) // resolve라는 값이 json타입 {"retCode" : "Success"}으로 넘어옴
			.then(result => {
				console.log(result); //
				if(result.retCode == 'Success'){
					alert('성공!');
					this.parentElement.parentElement.remove(); // 화면에서 지워주는 기능
				} else if(result.retCode == 'Fail'){
					alert('실패!');
				}
			})
			.catch(reject => console.log(reject));
	}); */
</script>