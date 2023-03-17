package co.start.service;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardService {
	
	// 메이트 목록
	public List<BoardVO> mateList(int page);
	
	// 전체 건수
	public int getTotalCount();
}
