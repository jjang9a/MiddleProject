package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.UserMapper;
import co.start.vo.UserVO;

public class UserServiceMybatis implements UserService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);
	
//	@Override
//	public List<UserVO> userList(int page) { // 목록.
//		// return mapper.noticeList();
//		return mapper.noticeListWithPaging(page);
//		
//	}
	
	@Override
	public UserVO login(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.login(vo);
	}
	
	
}
