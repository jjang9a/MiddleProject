package co.start.vo;

import lombok.Data;

@Data
public class StartpayVO {
	
	// 출발머니

	private int payStart; // 출발머니 잔액
	private int payPoint; // 포인트 잔액
	private String userId; // 보유자 ID
}
