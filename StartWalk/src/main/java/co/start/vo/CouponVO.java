package co.start.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CouponVO {
	
	// 쿠폰
	
		private int cpId; // 쿠폰번호 mapper로 insert시 values (coupon_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
		private String userId; // 쿠폰 소유자 id
		private int cpDiscount; // 할인액
		private String cpName; // 쿠폰명
		private Date cpDate; // 쿠폰 발급일
		private String cpKind; // char(1) - 만료 기한 종류 : 1일(D), 7일(W), 30일(M), 만료됨(Z)
		private String cpStatus; // 쿠폰상태 - 사용가능, 이미 사용되었다면 사용 불가
}
