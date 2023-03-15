package co.start.vo;

import java.sql.Date;

import lombok.Data;
@Data
public class PaytotalVO {

	// 결제 정보 페이지
	
		private int orderId; // 주문번호 - mapper로 insert시 values (order_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
		private int userId; // 결제자 id
		private int cpId; // 사용된 쿠폰번호
		private Date ptDate; // 주문일
		private String ptReceiver; // 배송 받는사람 이름
		private String ptPhone; // 배송 받는사람 연락처
		private String ptAddress; // 배송지 주소
		private String ptMethod; // 결제방법
		private int totalMoney; // 총 결제액
		private String ptStatus; // 현재 주문 상태 (결제대기중, 결제완료, 배송준비중, 배송중, 배송완료)
		
}
