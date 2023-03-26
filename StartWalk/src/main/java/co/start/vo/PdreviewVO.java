package co.start.vo;

import java.sql.Date;

import lombok.Data;
@Data
public class PdreviewVO {
	
	// 패키지, 숙박, 지역명물 등 상품 구매 후기
	
	private String userId; // 작성자id
	private int pdId; // 제품번호
	private String prBody; // 리뷰 내용
	private double prStar; // 평점, 소수 첫째자리까지 입력 가능
	private Date prDate; // 리뷰 작성일
	
	// 메인화면에서 사용할  user 등급
	private String userGrade; // normal, silver, gold, vip, admin
	
}
