package co.start.service;

import java.util.List;

import co.start.vo.MessageVO;
import co.start.vo.UserVO;


public interface UserService {
	// 대준
	// id/pw 로그인 처리.
	public UserVO login(UserVO vo);
	// 회원가입 (등록)
	public boolean addUser(UserVO vo);
	
	// 쪽지 dm (sender)
	public List<MessageVO> senderList(String Id); // 목록 보내는사람(전체리스트).
	public MessageVO dmSearch(int dmId); // 조회 (쪽지 고유번호 상세조회).
		
	// 쪽지 dm (receiver)
	public List<MessageVO> receiverList(String Id); // // 목록 받는사람(전체리스트).
		
	
	// 가애
	public UserVO getUserInfo(String id); // 특정 회원 조회
	public boolean modifyUser(UserVO vo); // 회원 정보 업데이트
	public boolean modifyAddr(UserVO vo); // 주소&연락처 업데이트 
	public boolean writeMsg(MessageVO vo); // 쪽지보내기
	
		
}
