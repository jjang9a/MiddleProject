package co.start.service;

import java.util.List;

import co.start.vo.CartVO;
import co.start.vo.CouponVO;
import co.start.vo.OrderVO;
import co.start.vo.PaydetailVO;
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
	public ProductVO getCartById(int id); // 카트상품 디테일 조회
	
	public List<CouponVO> getMyCoupon(String id, String status); // 내 쿠폰 리스트
	public StartpayVO myPointNow(String id); // 현재 소지한 출발페이, 적립금 현황	 조회
	public boolean order(OrderVO vo); // 주문정보 등록
	public int getOrderNum(); // 주문번호 조회
	public boolean addDetail(PaydetailVO vo); // 주문 상세 상품 등록
	public boolean useCoupon(int id); // 쿠폰 상태 변경
	public boolean addPoint(StartpayVO vo); // 적립금 부가
	public boolean autoDelCart(CartVO vo); // 결제된 상품 카트에서 삭제
	public boolean giveCoupon(String id); // 회원가입 축하 쿠폰 발급
	
	
	// 순덕
	
	// 용억
	public List<StartpayVO> payList();
	public boolean AddPay(StartpayVO vo);
	public List<CouponVO> couponList();
	public boolean insertPay(StartpayVO vo);
	// 대준
}
