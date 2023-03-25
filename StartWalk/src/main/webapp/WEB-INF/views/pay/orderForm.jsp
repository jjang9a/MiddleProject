<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
h3{
	text-align : center;
}
label{
	width : 100px
}
input{
	width : 200px;
}
addr.input{
	text-align : center;
}
button{
	border:none;
}
h5{
	padding-left:300px;
}
h5.input{
	width : 100px;
}
</style>

<div style="margin: 100px auto 100px auto; width: 700px; ">
	<h3>결제</h3>
	<h5>[주문 상품]</h5>
	<hr>
	<table class="table" style="width:600px; margin:auto; text-align:center; vertical-align:middle;">
		<tr><th colspan="2">상품명</th><th>수량</th><th>금액</th>
		<c:forEach var="i" items="${detail }">
			<tr>
				<td><img src="./upload/${i.prImg }" alt="상품" style="width: 100px; height:67px;"></td>
				<td>${i.pdName }</td>
				<td>${i.pdCount }</td>
				<td><fmt:formatNumber pattern="#,###,###" value="${(i.pdPrice*i.pdCount) }" />원</td>
		</c:forEach>
	</table>
	<hr>
	<form action="order.do" type="post">
		<div style="width:600px; margin:auto">
			<label for="reciver"><b>배송받는 분 </b></label><input type="text" id="reciver" name="reciver" value="${loginUser.userName }" required size="200" style="margin:5px;">
			<p style="font-size:12px">(패키지 상품의 경우 예약자 이름)</p>
			<label for="addr"><b>배송지 주소 </b></label> <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
			<div id="addr" style="margin-legt:50px">
				<input type="hidden" id="sample6_postcode" placeholder="우편번호" style="width: 100px; margin:5px;"><br>
				<input type="text" id="sample6_address" name="sample6_address" placeholder="주소" style="width: 500px; margin:5px;"><br>
				<input type="text" id="sample6_detailAddress" name="sample6_detailAddress" placeholder="상세주소" style="width: 400px; margin:5px;">
				<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
			</div>
			<label for="orderphone"><b>연락처 </b></label><input type="tell" name="orderphone" value="${loginUser.userPhone }" required style="margin:5px;">
			<br><Br><label for="saveAddr" style="width : 500px; font-size:14px"><input type="checkbox" id="svaeAddr" name="saveAddr" value="yes" style="width:40px"> 이 주소 내 정보에 저장하기</label>
		</div>
		<hr>
		<table class="table">
			<tr><th><label for="type">쿠폰</label></th><td colspan="2"><select id="type" name="type" onchange="ChangeValue()">
				<option value="none" data-amt="0">쿠폰 사용 안함</option>
				<c:forEach var="i" items="${coupons }">
					<option value="${i.cpId }" data-amt="${i.cpDiscount }">${i.cpName } (${i.cpDiscount }원 할인)</option>
				</c:forEach>
			</select></td></tr>
			<tr><th colspan="2">출발페이 및 적립금</th></tr>
			<tr><td>사용가능한 포인트 :</td><td>${point }</td><td><input type="text" name="usedPoint" id="usedPoint" value="0">
			<button id="useBtn" name="useBtn" type="button">사용</button></td></tr>
		</table>
			<hr>
			<h5>최종 결제액 : <input type="text" id="total" name="total" value="<fmt:formatNumber pattern="###,###,###" value="${total }" />원" style="border:none;" readonly>
			<input type="hidden" id="orderTotal" name="orderTotal" value="${total }">
			<input type="hidden" id="realTotal" name="realTotal" value="${total }"></h5>
			<hr>
			<p>결제방법</p>
			<input type="radio" name="paymethod" value="cash" style="width:20px;"><label>무통장 입금</label>
			<input type="radio" name="paymethod" value="card" style="width:20px;"><label>신용카드</label>
			<div>
			<button style="margin:20px 0;" type="submit">결제</button>
			</div>
	</form>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }

let total = ${total}

// 쿠폰이 선택 될 때
function ChangeValue(){
	var value_str = document.getElementById('type');
	let coupon = value_str.options[value_str.selectedIndex].getAttribute('data-amt');
	total -= coupon;
	console.log(total)
	document.querySelector('#realTotal').value = total;
	const cn1 = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	document.querySelector('#total').value = cn1+"원";
}

// 적립금 사용액 불러오기
document.getElementById('useBtn').addEventListener('click', function(e){
	let used = document.getElementById('usedPoint').value;
	if(used >= 0 && used <= ${point}){
		total -= used;
		console.log(total)	
	}else{
		alert('사용 가능한 포인트를 초과하였습니다')
	}
	document.querySelector('#realTotal').value = total;
	const cn1 = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	document.querySelector('#total').value = cn1+"원";
})
    
    
    
    

    
</script>