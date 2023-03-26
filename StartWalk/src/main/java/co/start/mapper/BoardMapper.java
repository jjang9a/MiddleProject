package co.start.mapper;

import java.util.List;

import co.start.vo.BoardVO;
import co.start.vo.ImagesVO;

public interface BoardMapper {
	
	//용억
	
	//목록
	public List<BoardVO> mateList(); // 매칭 목록
	//매칭 게시판
	public BoardVO selectMate(String bTitle);
	//등록
	public int insertMate(BoardVO vo);
	//수정
	public int updateMate(BoardVO vo);
	
	//페이징
	public List<BoardVO> mateListWithPaging(int page);
	// 전체 건수
	public int getTotalCount();
	// 전체 건수 매칭
	public int getTotalCounts();
	// 조회수 증가
	public int udpateCount(int pdId);
	

	// 가애 - 여행후기 게시판
	public List<BoardVO> travelListWithPaging(int page);
	public BoardVO tavelBoradInfo(int key);
	public int travelBoardInsert(BoardVO vo);
	public int travelBoardDelete(int key);
	public int travelBoardUpdate(BoardVO vo);
	public int searchBId();
	public int imgAttach(ImagesVO vo);
	public List<ImagesVO> images(int bid);
	public int updateBHit (int bid);
	public int updateReco(int bid); // 추천수 증가
	
	// 대준
	public List<BoardVO> scManagerList(); // 1:1문의 목록 (관리자용)
	public int scWrite(BoardVO vo); // 문의 작성 (등록)
	public BoardVO scSearch(int bId); // 조회 (게시글 제목으로 상세조회)
	public boolean scRemove(int bId); // 삭제
	public List<BoardVO> scUserList(String Id); // 1:1문의 목록 (회원용)
	public int scUserWrite(BoardVO vo); // 문의작성 등록 (회원용)
	
	// 순덕
	// 공지사항 목록
	public List<BoardVO> noitceList();
	// 공지사항 상세
	public BoardVO noticeInfo(String bTitle);
	// 공지사항 글쓰기
	public int insertnotice(BoardVO vo);
	// 공지사항 수정
	public int updateNotice(BoardVO vo);
	// 공지사항 삭제
	public boolean deleteNotice(int bId);
	
	
	
}
