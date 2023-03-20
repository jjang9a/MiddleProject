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
	public List<CommentsVO> CommentsList(){
		return mapper.commentsList();
	}

	@Override
	public boolean addComments(CommentsVO vo) {
		int r = mapper.insertComments(vo);
		return r ==1;
	}
}
