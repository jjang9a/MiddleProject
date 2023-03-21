package co.start.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	// 커뮤니티 게시판의 글
	
	private int bId; // 게시글 고유번호 - mapper로 insert시 values (board_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
	private String userId; // 작성자ID
	private String bTitle; // 게시글 제목
	private String bContents; // 작성글 내용
	private Date bWriteDate; // 작성일 - INSERT시 위치에 SYSDATE적어주거나 디폴트로 지정 돼 있으니 아예 입력하지 않아도 됨.
	private String bCategory; // 게시판 분류. CHAR(2) - 동행매칭 게시판(WI), 매칭 후기 게시판(WR), 여행 수기 게시판(TR), 공지사항(NO), 1:1문의(CU) 
	private String bMatching; // 매칭여부. CHAR(1) - O/X 또는 Y/N으로 구현자가 선택하고 여기 남겨둘것
	private String bFile; // 첨부파일
	private int bGood; // 추천수
	private int bCount; // 조회수
	private String bHead; // 말머리.
	
}
