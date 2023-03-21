package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.PaymentMapper;
import co.start.vo.CartVO;
import co.start.vo.ProductVO;

public class PaymentServiceMybatis implements PaymentService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PaymentMapper mapper = sqlSession.getMapper(PaymentMapper.class);
	
	// 가애
	@Override
	public List<ProductVO> getCartList(String id) {
		return mapper.cartList(id);
	}
	@Override
	public boolean countUpdate(CartVO vo) {
		return mapper.cartUpdate(vo) == 1;
	}
	@Override
	public boolean delFromCart(CartVO vo) {
		return mapper.cartDelete(vo) == 1;
	}
	@Override
	public boolean delCartAll(String id) {
		return mapper.cartDeleteAll(id) >= 1;
	}
	@Override
	public boolean addCart(CartVO vo) {
		return mapper.cartInsert(vo) == 1;
	}
	
	// 순덕
	
	// 용억
	
	// 대준
	
	
}
