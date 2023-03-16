package co.start.mapper;

import java.util.List;

import co.start.vo.UserVO;

public interface UserMapper {
	
	
	// 로그인 용도.
	public UserVO login(UserVO vo);
	
	// 회원 등록 (회원가입)
	public int insertUser(UserVO vo);
	
	
}
