package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CommentsVO {
	
	// 게시글의 댓글
	
	private int coId; // 댓글 고유번호(정렬용으로만 사용할듯) mapper로 insert시 values (comm_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
	private String userId; // 댓글 작성자 id
	private int bId; // 댓글이 달린 글의 고유번호
	private String coBody; // 댓글 내용
	private Date coDate; // 댓글 작성일 - 디폴트:sysdate
	
}
