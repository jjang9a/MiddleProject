package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.UserMapper;
import co.start.vo.MessageVO;
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
	
	@Override
	public boolean modifyAddr(UserVO vo) {
		return mapper.updateAddr(vo) == 1;
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
	// 보낸쪽지함 목록 관리자(전체리스트).
	@Override
	public List<MessageVO> senderList(String Id) {
		return mapper.senderList(Id);
	}
	// 보낸쪽지 조회 (쪽지 고유번호 상세조회).
	@Override
	public MessageVO dmSearch(int dmId) {
		return mapper.dmSearch(dmId);
	}
	// 받은 쪽지함 목록 (전체리스트).
	@Override
	public List<MessageVO> receiverList(String Id) {
		return mapper.receiverList(Id);
	}
	

	
		
}
