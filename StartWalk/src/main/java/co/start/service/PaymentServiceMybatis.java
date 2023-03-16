package co.start.service;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.PaymentMapper;

public class PaymentServiceMybatis implements PaymentService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PaymentMapper mapper = sqlSession.getMapper(PaymentMapper.class);
	
	// 가애
	
	// 순덕
	
	// 용억
	
	// 대준
	
	
}
