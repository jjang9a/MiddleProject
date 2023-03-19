package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardMapper {
	public List<BoardVO> mateList(); // 매칭 목록
	public List<BoardVO> mateListWithPaging(int page);
	public int getTotalCount();
	public int udpateCount(int pdId);
	
	public List<BoardVO> travelListWithPaging(int page);
	public BoardVO tavelBoradInfo(int key);
	public int travelBoardInsert(BoardVO vo);
	public int travelBoardDelete(int key);
	public int travelBoardUpdate(BoardVO vo);
}
