package co.start.service;

import java.util.List;

import co.start.vo.CartVO;
import co.start.vo.CouponVO;
import co.start.vo.ProductVO;
import co.start.vo.StartpayVO;

public interface PaymentService {

	// 가애
	public List<ProductVO> getCartList (String id); // 카트 목록 불러오기
	public boolean countUpdate(CartVO vo); // 카트 수량 변경
	public boolean delFromCart(CartVO vo); // 카트 단건 삭제
	public boolean delCartAll(String id); // 카트 전체 삭제
	public boolean addCart(CartVO vo); // 카트에 상품 추가
	public CartVO getCartInfo(CartVO vo); // 카트 상품 정보 조회
	
	// 순덕
	
	// 용억
	public List<StartpayVO> payList();
	public boolean AddPay(StartpayVO vo);
	public List<CouponVO> couponList();
	public boolean insertPay(StartpayVO vo);
	// 대준
}
