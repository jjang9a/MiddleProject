package co.start.service;

import java.util.List;

import co.start.vo.CommentsVO;

public interface CommentsService {
	
	//용억
		//매칭 댓글 목록
			public List<CommentsVO> CommentsList();
		//매칭 댓글 등록
			public boolean addComments(CommentsVO vo);
}
