package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.CommentsMapper;
import co.start.vo.CommentsVO;

public class CommentsServiceMybatis implements CommentsService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CommentsMapper mapper = sqlSession.getMapper(CommentsMapper.class);
	
	//용억
	public List<CommentsVO> CommentsList(int bId){
		return mapper.commentsList(bId);
	}

	@Override
	public boolean addComments(CommentsVO vo) {
		int r = mapper.insertComments(vo);
		return r ==1;
	}

	@Override
	public boolean removeComments(int coId) {
		
		return mapper.deleteComments(coId)==1;
	}

	
	
	@Override
	public List<CommentsVO> mainommentsList() {
		return mapper.mainommentsList();
	}
}
