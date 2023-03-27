package co.start.mapper;

import java.util.List;

import co.start.vo.CommentsVO;
import co.start.vo.ProductVO;

public interface CommentsMapper {
	
	//용억 
	//댓글 목록
	public List<CommentsVO> commentsList(int bId);
	//댓글 등록
	public int insertComments(CommentsVO VO);
	//댓글 삭제
	public int deleteComments(int coId);
	
	// 메인화면 댓글 리스트
	public List<CommentsVO> mainommentsList();
	
}
