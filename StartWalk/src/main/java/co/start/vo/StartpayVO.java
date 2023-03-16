package co.start.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class StartpayVO {
	
	// 출발머니

	private int payStart; // 출발머니 잔액
	private int payPoint; // 포인트 잔액
	private String userId; // 보유자 ID
	private Date payDate; // 충전, 적립 발생일 - 디폴트 : sysdate
	private String payWhy; // 금액 변동이유 (ex.출발페이 충전, 상품 구매 적립, 상품 구매시 사용 등)
	
}
