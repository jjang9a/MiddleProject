package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;
import co.start.vo.UserVO;

public interface UserMapper {
	
	
	// 로그인 용도.
	public UserVO login(UserVO vo);
	
	// 회원 등록 (회원가입)
	public int addUser(UserVO vo);
	
	// 문의 게시판 목록 (관리자)
	public List<BoardVO> scManagerList(int page);
	
	// 가애
	// 특정 회원 조회
	public UserVO userInfo(String id);
	// 회원 정보 수정
	public int updateUser(UserVO vo);
	
}
