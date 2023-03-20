package co.start.mapper;

import java.util.List;

import co.start.vo.CommentsVO;
import co.start.vo.ProductVO;

public interface CommentsMapper {
	
	//용억 
	//댓글 목록
	public List<CommentsVO> commentsList();
	
	public int insertComments(CommentsVO VO);
}
