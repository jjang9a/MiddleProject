package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	
	// 판매 제품
	
	private int pdId; // 상품 고유번호 - mapper로 insert시 values (pord_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
	private String pdName; // 상품명
	private int pdPrice; // 상품 가격
	private String pdType; // char(2) - 패키지(PK), 숙소(HO), 지역명물(PR)
	private int pdSale; // 혹시 세일중이라면 세일가격
	private String pdInfo; // 제품 상세 설명(약 1300자까지 가능)
	private Date pdStart; // 패키지 상품 출발일
	private Date pdEnd; // 패키지 상품 도착일
	private String pdLocation; // 여행 지역 구분
	private String prImg; // 상품 대표 이미지
	
	private double star; // 테이블에는 없지만 제품 평균 평점을 위한 항목
	
}
