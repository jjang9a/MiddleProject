package co.start.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.start.vo.CartVO;
import co.start.vo.CouponVO;
import co.start.vo.OrderVO;
import co.start.vo.PaydetailVO;
import co.start.vo.ProductVO;
import co.start.vo.StartpayVO;

public interface PaymentMapper {

	// 가애
	public List<ProductVO> cartList(String id); // 사용자별 장바구니 리스트 불러오기
	public int cartUpdate(CartVO vo); // 장바구니 상품 수량 변경
	public int cartDelete(CartVO vo); // 장바구니 상품 한건 삭제
	public int cartDeleteAll(String id); // 장바구니 전체 삭제
	public int cartInsert(CartVO vo); // 장바구니 추가
	public CartVO searchCart(CartVO vo); // 장바구니 상품 조회
	public ProductVO searchById(int cartId); // cartId로 카트정보 조회
	public List<CouponVO> searchMyCoupon(@Param("id") String id, @Param("status") String status); // 내 쿠폰 리스트
	public StartpayVO pointSum(String id); // 현재 보유한 출발페이, 포인트 계산
	
	public int createOrder(OrderVO vo); // 주문정보 등록
	public int searchOrderId(); // 주문번호 조회 ----------------<<이까지만 매퍼에 있음>>
	public int insertOrderDetail(PaydetailVO vo); // 주문 상세 상품 등록
	public int updateCoupon(int cpId); // 쿠폰 상태 사용완료로 변경
	public int insertPoint(StartpayVO vo); // 적립금 등록
	public int CartOrderDel(CartVO vo); // 결제 된 상품 카트에서 삭제
	

	
	//용억
		//출발페이 목록
			public List<StartpayVO> payList();
		//출발페이 충전	
			public int updatePay(StartpayVO vo);
		//출발페이 생성
			public int insertPay(StartpayVO vo);
		//쿠폰
			public List<CouponVO> couponList();
	
}
