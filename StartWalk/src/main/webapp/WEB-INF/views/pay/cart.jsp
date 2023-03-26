<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div style="margin: 200px 50px;">
	<div class="row px-xl-5">
		<div class="col-lg-8 table-responsive mb-5" style="margin: auto;">
			<h4>장바구니</h4>
			<a href="javascript:orderall();" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">전체 주문</a>
			<a href="javascript:orderSelected();" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">선택
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
							<td class="align-middle"><img src="./upload/${i.prImg }" alt=""
									style="width: 120px; height:80px;"></td>
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
								<button type="submit" name="updateBtn" style="font-size: 10px; border:none; color:grey;" onclick="updateBtn(${i.cartId })">적용</button>
							</td>
							<td class="align-middle" id="tAmount" name="tAmount">
								<fmt:formatNumber pattern="#,###,###" value="${(i.pdPrice*i.pdCount) }" />원
							<td class="align-middle"><button class="btn btn-sm btn-primary" id="delBtn"
									onclick="delBtn(${i.cartId })">
									<i class="fa fa-times"></i>
								</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div style="margin-left:600px">
			<table style="font-size : 20px">
				<tr>
				<th>전체 결제 예정액 </th>
				<td id="totalAmt" style="width:180px; text-align:right;"><fmt:formatNumber pattern="#,###,###" value="${initSum }" />원</td>
				</tr>
			</table>
<!-- 			<b style="font-size : 20px">총 결제 예정액 </b>
			<p id="totalAmt" style="">0</p> -->
		</div>
		<form action="orderForm.do" method="post" style="display:none" id="selectOrder"></form>
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
		const cn1 = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		document.querySelector('#totalAmt').innerText = cn1+"원";
	}

	function delBtn(cartId) {
		fetch('cartDelete.do?cartId=' + cartId)
			.then(resolve => resolve.json()) // {"retCode": "Success"} -> {retCode: "Success"}
			.then(result => {
				console.log(result)
				if (result.retCode == 'Success') {
					document.querySelector('#cart_' + cartId).remove();
				} else if (result.retCode == 'Fail') {
					alert('error....')
				}
			})
			.catch(reject => console.error(reject))
	}
	
	function updateBtn(cartId) {
		let cartTr = document.querySelector('#cart_' + cartId);
		let count = cartTr.querySelector('input#tCount').value;
		fetch('cartUpdate.do', {
			method : 'post',
			headers : {'Content-Type' : 'application/x-www-form-urlencoded'},
			body: 'cartId=' + cartId + '&tCount=' + count
		})
			.then(resolve => resolve.json()) // {"retCode": "Success"} -> {retCode: "Success"}
			.then(result => {
				console.log(result)
				if (result.retCode == 'Success') {
					alert('수량 변경 완료!')
				} else if (result.retCode == 'Fail') {
					alert('error....')
				}
			})
			.catch(reject => console.error(reject))
	}


	// document.querySelectorAll('input[type="checkbox"]').forEach(function (chk) {
	// 	if (chk.value) {

	// 	}
	// });

/* 	function orderall() {
		console.log('orderAll');

		let str = 'orderForm.do?id=1001&id=1002&id=1003';
		fetch(str)
			.then(resolve => resolve.json())
			.then(result => console.log(result))
			.catch(reject => console.log(reject));
	} */
	
	function orderSelected(){
		let checkbox = document.querySelectorAll('input[name="check"]');
		let String = "";
		checkbox.forEach(element => {
			if(element.checked==true){
				let id = element.id;
				String += id.substring(5)+",";
			}
		})
		let str = String.substring(0,String.length-1);
		let form = document.querySelector('#selectOrder');
		let input = document.createElement('input');
		input.type='text';
		input.value=str;
		input.name='selectOrder';
		form.append(input);
		form.submit();
	}
	
	function orderall(){
		let checkbox = document.querySelectorAll('input[name="check"]');
		let String = "";
		checkbox.forEach(element => {
			let id = element.id;
			String += id.substring(5)+",";
		})
		let str = String.substring(0,String.length-1);
		let form = document.querySelector('#selectOrder');
		let input = document.createElement('input');
		input.type='text';
		input.value=str;
		input.name='selectOrder';
		form.append(input);
		form.submit();
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

</script>