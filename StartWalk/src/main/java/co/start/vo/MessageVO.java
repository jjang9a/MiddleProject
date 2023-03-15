package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MessageVO {
	private int dmId;
	private String dmReceiver;
	private String dmSender;
	private String dmBody;
	private Date dm_date;
	
}
