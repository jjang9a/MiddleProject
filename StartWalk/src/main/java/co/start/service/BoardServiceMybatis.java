package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.BoardMapper;
import co.start.vo.BoardVO;


public class BoardServiceMybatis implements BoardService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
	@Override
	public List<BoardVO> mateList(int page) {
		// TODO Auto-generated method stub
		return mapper.mateListWithPaging(page);
	}
	@Override
	public int getTotalCount() {
		
		return mapper.getTotalCount();
	}
	
	// 가애
	
	// 순덕
	
	// 용억
	
	// 대준
	
	
}
