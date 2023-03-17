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
	
	
	// 순덕
	
	
	// 용억
	
	
	// 대준
	// 로그인
	@Override
	public UserVO login(String id) {
		return mapper.login(id);
	}
	// 회원가입
	@Override
	public boolean addUser(UserVO vo) {
		int r = mapper.addUser(vo);
		return r == 1;
	}
	// 관리자 문의 List로 받기.-> 전체 리스트 조회-->board_type을 변수로 넣기
	public BoardVO scManagerList(BoardVO vo) {
		return mapper.scManagerList(vo);
	}
	// 관리자 말고 일반 회원용 조회 메소드 하나 더 만들기. // where user_id = #{id} <<mapper.xml 에 넣고 로 조회하기 session.id Control에서 service 조회할때 변수로 사용 
	
}
