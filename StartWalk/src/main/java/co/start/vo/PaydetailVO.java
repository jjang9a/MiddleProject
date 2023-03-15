package co.start.vo;

import lombok.Data;

@Data
public class PaydetailVO {

	// 주문번호 당 상세 주문내역
	
	   private int orderId; // 주문번호
	   private int pdCount; // 상품갯수
	   private int pdId; // 상품번호
}
