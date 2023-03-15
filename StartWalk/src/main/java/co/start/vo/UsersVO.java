package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class UsersVO {
	String userId;
	String userPasswd;
	String name;
	Date userJoin;
	String userGender;
	int userPhone; 
	String userAddr;
	String userMail;
	String userGrade;
	
}
