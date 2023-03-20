package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.BoardMapper;
import co.start.vo.BoardVO;

public class ScManagerServiceMybatis implements ScManagerService {
	
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
	
	// 1:1문의 목록 관리자용(전체리스트).
	@Override
	public List<BoardVO> scManagerList(int page) { 
	//	return mapper.scManagerList();
		return mapper.scManagerLisWithPaging(page);
	}

	// 글읽기 (상세조회)
	@Override
	public BoardVO scSearch(int bId) { // 글읽기(아이디로 조회).
		mapper.scSearch(bId);
		return mapper.scSearch(bId);
	}
	
	//	@Override
//	public BoardVO scSearch(String bTitle) { // 게시글 제목으로 조회.
//		mapper.scSearch(String bTitle);
//		return mapper.scSearch(bTitle);
//	}
	
	
	// 문의작성 1:1문의 글쓰기(등록).
	@Override
	public boolean scWrite(BoardVO vo) { //등록.
//	sqlSession.commit();//다른세션에서 반영
		return mapper.scWrite(vo)==1;
	}

	// 수정
	@Override // 수정
	public int scModify(BoardVO vo) {
		return mapper.scModify(vo);
	}
	
	// 삭제
	@Override // 삭제
	public int scRemove(int bId) {
		return mapper.scRemove(bId);
	}
}
