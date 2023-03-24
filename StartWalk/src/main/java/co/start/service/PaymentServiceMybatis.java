package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.PaymentMapper;
import co.start.vo.CartVO;
import co.start.vo.CouponVO;
import co.start.vo.ProductVO;
import co.start.vo.StartpayVO;

public class PaymentServiceMybatis implements PaymentService {

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

	@Override
	public CartVO getCartInfo(CartVO vo) {
		return mapper.searchCart(vo);
	}
	
	@Override
	public ProductVO getCartById(int id) {
		return mapper.searchById(id);
	}

	@Override
	public List<CouponVO> getMyCoupon(String id) {
		return mapper.searchMyCoupon(id);
	}
	
	@Override
	public StartpayVO myPointNow(String id) {
		return mapper.pointSum(id);
	}
	
//	@Override
//	public int createOrderInfo(String[] carts) {
//		// 주문번호 생성. (10000)
//		int orderId = 10000;
//		return orderId;
//	}

	// 순덕

	// 용억
	@Override
	public List<StartpayVO> payList() {
		return mapper.payList();
	}

	@Override
	public boolean AddPay(StartpayVO vo) {
		return mapper.updatePay(vo) == 1;
	}

	@Override
	public List<CouponVO> couponList() {
		return mapper.couponList();
	}

	@Override
	public boolean insertPay(StartpayVO vo) {
		int r = mapper.insertPay(vo);
		return r==1;
	}



	// 대준

}
