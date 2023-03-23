package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.BoardMapper;
import co.start.vo.BoardVO;
import co.start.vo.ImagesVO;


public class BoardServiceMybatis implements BoardService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
	
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
	@Override
	public int searchBId() {
		return mapper.searchBId();
	}
	@Override
	public boolean imgAttach(ImagesVO vo) {
		return mapper.imgAttach(vo) == 1;
	}
	@Override
	public List<ImagesVO> getImgs(int bid) {
		return mapper.images(bid);
	}
	@Override
	public boolean countUp(int bid) {
		return mapper.updateBHit(bid) == 1;
	}
	
	// 순덕
	@Override
	public List<BoardVO> noitceList() {		// 공지사항 목록
		return mapper.noitceList();
	}
	@Override
	public BoardVO noticeInfo(String bTitle) {		// 공지사항 상세
		// 
		return mapper.noticeInfo(bTitle);
	}
	@Override
	public boolean addnotice(BoardVO vo) {		// 공지사항 등록(글쓰기)
		int r = mapper.insertnotice(vo);
		return r == 1;
	}
	
	
	// 용억
	@Override
	public boolean addMate(BoardVO vo) {
		int r = mapper.insertMate(vo);
		return r ==1;
		
	}
	@Override
	public boolean ModifyMate(BoardVO vo) {
		// TODO Auto-generated method stub
		return mapper.updateMate(vo)==1;
	}
	
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
	public BoardVO getMateInfo(String bTitle) {
		
		return mapper.selectMate(bTitle);
	}
	
	
	
	// 대준
	// 1:1문의 목록 관리자용(전체리스트).
	@Override
	public List<BoardVO> scManagerList() {
		return mapper.scManagerList();
	}
	
	// 글읽기 (상세조회)
	@Override
	public BoardVO scSearch(int bId) {
	//	mapper.scSearch(bTitle);
		return mapper.scSearch(bId);
	}
	
	// 문의작성 1:1문의 글쓰기(등록).
	@Override
	public boolean scWrite(BoardVO vo) {
		return mapper.scWrite(vo)==1;
	}
	
	// 삭제
	@Override
	public boolean scRemove(int bId) {
		return mapper.scRemove(bId);
	}

	// 일반 회원용 조회 메소드 하나 더 만들기. // where user_id = #{id} <<mapper.xml 에 넣고 로 조회하기 session.id Control에서 service 조회할때 변수로 사용 
	@Override
	public List<BoardVO> scUserList() {
	return mapper.scUserList();
	
	}
	
}
