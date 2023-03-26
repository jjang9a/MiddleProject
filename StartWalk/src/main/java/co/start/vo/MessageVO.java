package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MessageVO {
	
	// 쪽지
	
	private int dmId; // 쪽지 고유번호(정렬용으로만 쓰일듯) mapper로 insert시 values (post_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
	private String dmReceiver; // 받는사람
	private String dmSender; // 보낸사람
	private String dmBody; // 쪽지 내용
	private Date dmDate; // 보낸 날짜 - 디폴트:sysdate
	
}
