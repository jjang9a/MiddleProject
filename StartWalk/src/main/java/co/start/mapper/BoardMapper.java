package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardMapper {
	public List<BoardVO> mateList(); // 매칭 목록
	public List<BoardVO> mateListWithPaging(int page);
	public int getTotalCount();
	public int udpateCount(int pdId);
}
