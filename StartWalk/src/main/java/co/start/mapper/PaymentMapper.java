package co.start.mapper;

import java.util.List;

import co.start.vo.CartVO;
import co.start.vo.ProductVO;

public interface PaymentMapper {

	// 가애
	public List<ProductVO> cartList(String id); // 사용자별 장바구니 리스트 불러오기
	public int cartUpdate(CartVO vo); // 장바구니 상품 수량 변경
	public int cartDelete(CartVO vo); // 장바구니 상품 한건 삭제
	public int cartDeleteAll(String id); // 장바구니 전체 삭제
	public int cartInsert(CartVO vo); // 장바구니 추가
	public CartVO searchCart(CartVO vo); // 장바구니 상품 조회
	
}
