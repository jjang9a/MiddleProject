package co.start.service;

import java.util.List;

import co.start.vo.BoardVO;
import co.start.vo.UserVO;


public interface UserService {
	
	// id/pw 로그인 처리.
	public UserVO login(String id);
	
	// 회원가입 (등록)
	public boolean addUser(UserVO vo);
	
	// 문의 게시판 전체조회
	public public List<BoardVO> scManagersList(int page);
		
		
		
}
