package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private int pdId; 
	private String pdName;
	private int pdPrice;
	private String pdType;
	private int pdSale;
	private String pdInfo;
	private Date pdStart;
	private Date pdEnd;
	private String pdLocation; 
}
