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
	public List<BoardVO> mateList() {
		// TODO Auto-generated method stub
		return mapper.mateList();
	}
	@Override
	public int getTotalCount() {
		
		return mapper.getTotalCount();
	}
	@Override
	public BoardVO getMateInfo(int userId) {
		
		return mapper.selectMate(userId);
	}
	
	// 가애
	@Override
	public List<BoardVO> travelBoardList(int page) {
		return mapper.travelListWithPaging(page);
	}
	@Override
	public BoardVO travelBoardRead(int key) {
		return mapper.tavelBoradInfo(key);
	}
	@Override
	public boolean travelBoardWrite(BoardVO vo) {
		return mapper.travelBoardInsert(vo) == 1; 
	}
	@Override
	public boolean travelBoardDel(int key) {
		return mapper.travelBoardDelete(key) == 1;
	}
	@Override
	public boolean trabelBoardModify(BoardVO vo) {
		return mapper.travelBoardUpdate(vo) == 1;
	}
	
	// 순덕
	
	// 용억
	
	// 대준
	@Override
	public List<BoardVO> scManagerList(int page) {
//		return mapper.scManagerList();
		return mapper.scManagerLisWithPaging(page);
	}
	
	@Override
	public BoardVO scSearch(int bId) {
		return mapper.scSearch(bId);
	}
	
	@Override
	public boolean scWrite(BoardVO vo) {
		return mapper.scWrite(vo)==1;
	}
	
	@Override
	public int scModify(BoardVO vo) {
		return 0;
	}
	
	@Override
	public int scRemove(int bId) {
		return 0;
	}

	// 일반 회원용 조회 메소드 하나 더 만들기. // where user_id = #{id} <<mapper.xml 에 넣고 로 조회하기 session.id Control에서 service 조회할때 변수로 사용 
	//@Override
	//public BoardVO scUserList(BoardVO vo) {
	//	return mapper.scUserList(vo);
	
	
}
