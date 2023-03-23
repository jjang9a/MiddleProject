package co.start.mapper;

import java.util.List;

import co.start.vo.MessageVO;
import co.start.vo.UserVO;

public interface UserMapper {
	
	// 대준
	// 로그인 용도.
	public UserVO login(UserVO vo);
	// 회원 등록 (회원가입)
	public int addUser(UserVO vo);
	
	// 쪽지 dm (sender)
	public List<MessageVO> senderList(); // 목록 보내는사람(전체리스트).
	public MessageVO senderSearch(int dmId); // 조회 (쪽지 고유번호 상세조회).
	public int senderWrite(MessageVO vo); // 문의 작성 (등록)
	public boolean senderRemove(int dmId); // 삭제
		
	// 쪽지 dm (receiver)
	public List<MessageVO> receiverList(); // 목록 받는사람(전체리스트).
	public int receiverWrite(MessageVO vo); // 회원 쪽지 보내기(등록).
	
	// 가애
	// 특정 회원 조회
	public UserVO userInfo(String id);
	// 회원 정보 수정
	public int updateUser(UserVO vo);
	
}
