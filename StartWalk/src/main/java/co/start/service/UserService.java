package co.start.service;

import java.util.List;

import co.start.vo.UserVO;


public interface UserService {
	
		// id/pw 로그인 처리.
		public UserVO login(UserVO vo);
		
		
}
