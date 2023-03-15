package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CommentsVO {
	private int co_id;
	private String userId;
	private int bId;
	private String coBody;
	private Date co_date;
	
}
