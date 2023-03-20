package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardMapper {
	//목록
	public List<BoardVO> mateList(); // 매칭 목록
	//매칭 게시판
	public BoardVO selectMate(String bTitle);
	
	//페이징
	public List<BoardVO> mateListWithPaging(int page);
	// 전체 건수
	public int getTotalCount();
	
	// 조회수 증가
	public int udpateCount(int pdId);
	
	public List<BoardVO> travelListWithPaging(int page);
	public BoardVO tavelBoradInfo(int key);
	public int travelBoardInsert(BoardVO vo);
	public int travelBoardDelete(int key);
	public int travelBoardUpdate(BoardVO vo);
	
	// 대준
	// 1:1문의 목록 (관리자용)
	public List<BoardVO> scManagerList(); 
		
	public List<BoardVO> scManagerLisWithPaging(int page);
		
	// 문의 작성 (등록)
	public int scWrite(BoardVO vo); 
		
	// 조회 (게시글 고유번호로 상세조회)
	public BoardVO scSearch(int bId); 
		
	// 수정
	public int scModify(BoardVO vo);
		
	// 삭제
	public int scRemove(int bId);
		
	// 1:1문의 목록 (회원용)
	public List<BoardVO> scUserList(); 
	
}
