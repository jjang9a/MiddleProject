package co.start.vo;

import lombok.Data;

@Data
public class ImagesVO {

	private int pdId; // 그림이 첨부된 상품 번호
	private int bId; // 그림이 첨부된 글 번호
	private String imgFile; // 그림
	
}
