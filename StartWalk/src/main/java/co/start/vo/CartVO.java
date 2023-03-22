package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {
	
	//장바구니
	
	private int pdId;
	private String userId;
	private int pdCount;
	private int cartId;
	
	// 조인 전용
	private String pdName;
	private int pdPrice;
	
}
