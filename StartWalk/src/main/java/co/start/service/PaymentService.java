package co.start.service;

import java.util.List;

import co.start.vo.CartVO;
import co.start.vo.ProductVO;

public interface PaymentService {

	// 가애
	public List<ProductVO> getCartList (String id); // 카트 목록 불러오기
	public boolean countUpdate(CartVO vo); // 카트 수량 변경
	public boolean delFromCart(CartVO vo); // 카트 단건 삭제
	public boolean delCartAll(String id); // 카트 전체 삭제
	public boolean addCart(CartVO vo);
	
	// 순덕
	
	// 용억
	
	// 대준
}
