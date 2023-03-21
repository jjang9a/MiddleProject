package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.UserMapper;
import co.start.vo.BoardVO;
import co.start.vo.UserVO;

public class UserServiceMybatis implements UserService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);
	
	// 가애
	@Override //특정 회원 조회
	public UserVO getUserInfo(String id) {
		return mapper.userInfo(id);
	}
	
	@Override
	public boolean modifyUser(UserVO vo) {
		return mapper.updateUser(vo) == 1;
	}
	
	// 순덕
	
	
	// 용억
	
	
	// 대준
	// 로그인
		@Override
		public UserVO login(UserVO vo) {
			return mapper.login(vo);
		}
		// 회원가입
		@Override
		public boolean addUser(UserVO vo) {
			int r = mapper.addUser(vo);
			return r == 1;
		}
		
		
		
}
