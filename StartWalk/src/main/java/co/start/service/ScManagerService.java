package co.start.service;

import java.util.List;

import co.start.vo.BoardVO;

public interface ScManagerService {
	//대준
	// 1:1문의 목록 관리자용(전체리스트).
	public List<BoardVO> scManagerList(int page);
	
	// 문의작성 1:1문의 글쓰기(등록).
	public boolean scWrite(BoardVO vo);
	
	// 글읽기 (상세조회)
	public BoardVO scSearch(int bId);
	
	// 수정
	public int scModify(BoardVO vo);
	
	// 삭제
	public int scRemove(int bId);


}
