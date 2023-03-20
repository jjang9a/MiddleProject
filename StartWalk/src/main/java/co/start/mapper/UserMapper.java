package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;
import co.start.vo.UserVO;

public interface UserMapper {
	
	// 대준
	// 로그인 용도.
	public UserVO login(String id);
	
	// 회원 등록 (회원가입)
	public int addUser(UserVO vo);
	
	
	// 가애
	// 특정 회원 조회
	public UserVO userInfo(String id);
	// 회원 정보 수정
	public int updateUser(UserVO vo);
	
}
