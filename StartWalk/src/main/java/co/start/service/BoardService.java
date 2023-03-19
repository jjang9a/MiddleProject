package co.start.service;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardService {
	
	// 메이트 목록
	public List<BoardVO> mateList(int page);
	
	// 전체 건수
	public int getTotalCount();
	
	// 여행 수기
	public List<BoardVO> travelBoardList(int page);
	public BoardVO travelBoardRead(int key);
	public boolean travelBoardWrite(BoardVO vo);
	public boolean travelBoardDel(int key);
	public boolean trabelBoardModify(BoardVO vo);
}
