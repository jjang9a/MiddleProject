package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.UserMapper;
import co.start.vo.UserVO;

public class UserServiceMybatis implements UserService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	UserMapper mapper = sqlSession.getMapper(UserMapper.class);
	

	
	@Override
	public UserVO login(UserVO vo) {
		return mapper.login(vo);
	}



	@Override
	public boolean addUser(UserVO vo) {
		int r = mapper.insertUser(vo);
		return r == 1;
	}
	
	
}
