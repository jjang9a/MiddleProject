<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../client/sidebar.jsp"%>

<style>
.answer {
	display: none;
	padding-bottom: 30px;
}

#faq-title {
	font-size: 25px;
}

.faq-content {
	border-bottom: 1px solid #e0e0e0;
}

.question {
	font-size: 18px;
	padding: 30px 0;
	cursor: pointer;
	border: none;
	outline: none;
	background: none;
	width: 100%;
	text-align: left;
}

.question:hover {
	color: orange;
}

[id$="-toggle"] {
	margin-right: 15px;
}
</style>

<div
	style="width: 750px; float: left; margin-left: 30px; padding: 30px;">
	<span id="faq-title" style="font-weight: 700;">자주
		묻는 질문</span><span style="font-weight: 700; color: orange; font-size:25px">(FAQ)</span>
	<div class="faq-content">
		<button class="question" id="que-4">
			<span id="que-4-toggle">+</span><span>회원등급은 어떻게 이루어져있나요?</span>
		</button>
		<div class="answer" id="ans-4">
		저희 '출발'의 회원은 일반, 실버, 골드, VIP 4등급으로 이루어져 있습니다<br>
		자세한 등업조건과 혜택은 아래 표를 참고하세요<br><Br>
		<img src="./img/회원등급 안내.png" alt="회원등급안내">
		</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-1">
			<span id="que-1-toggle">+</span><span>출발페이를 충전하면 무엇이 좋나요?</span>
		</button>
		<div class="answer" id="ans-1">
		'출발'의 선충전 캐시인 출발페이는 충전시 충전액의 10%를 적립금으로 더 드리고 있습니다.<br>
		</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-2">
			<span id="que-2-toggle">+</span><span>충전된 출발페이와 포인트만으로 모든 결제를 할 수 있나요?</span>
		</button>
		<div class="answer" id="ans-2">네 가능합니다. 출발페이, 포인트, 쿠폰의 사용만으로 결제예정금액이 0원이 되셨을 경우<br>
		무통장 입금으로 진행해주시면 관리자가 확인 후 '결제완료'로 처리 해 드리겠습니다.</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-3">
			<span id="que-3-toggle">+</span><span>숙박상품 예약은 어떻게 하나요?</span>
		</button>
		<div class="answer" id="ans-3">
		저희 사이트에서 판매하는 숙박상품은 예약확정권이 아닌 이용금액권입니다.<br>
		따라서 예약은 각 숙소의 공식 홈페이지에서 진행하실 수 있습니다.
		</div>
	</div>
</div>

<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>

</div>

<div style="clear: both;"></div>

<!-- body end -->
</div>