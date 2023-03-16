package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	private String userId;
	private String userPasswd;
	private String userName;
	private Date userJoin; // 위치 맞춰서 sysdate적거나 디폴트 처리 돼어있으니 빼고 입력해도 됨.
	private String userGender; // char - F/M
	private int userPhone; 
	private String userAddr;
	private String userMail;
	private String userGrade; // normal, bronze, silver, gold, vip, admin - 디폴트로 normal 지정되어있으므로 입력안해도 상관없음
	
}
