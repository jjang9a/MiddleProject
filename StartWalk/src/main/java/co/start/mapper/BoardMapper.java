package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardMapper {
	//목록
	public List<BoardVO> mateList(); // 매칭 목록
	//매칭 게시판
	public BoardVO selectMate(int userId);
	
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
}
