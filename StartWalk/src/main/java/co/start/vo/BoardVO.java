package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int bId;
	private String userId; 
	private String bTitle;
	private String bContents;
	private Date bWritedate;
	private String bCategory;
	private String bMatching;
	private String bFile;
	private int bGood;
	private int bCount;
	
}
