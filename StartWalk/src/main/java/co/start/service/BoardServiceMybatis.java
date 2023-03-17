package co.start.service;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.BoardMapper;


public class BoardServiceMybatis implements BoardService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
	
	// 가애
	
	// 순덕
	
	// 용억
	
	// 대준
	
	
}
