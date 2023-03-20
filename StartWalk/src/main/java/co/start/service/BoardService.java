package co.start.service;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardService {
	
	// 메이트 목록
	public List<BoardVO> mateList();
	
	// 메이트 상세
	public BoardVO getMateInfo(int userId);
	// 전체 건수
	public int getTotalCount();
}
