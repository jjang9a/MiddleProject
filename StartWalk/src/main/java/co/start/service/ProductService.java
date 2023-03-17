package co.start.service;

import java.util.List;

import co.start.vo.ProductVO;

public interface ProductService {

	//용억
		//상품목록
	       public List<ProductVO> products();
	    //상품상세
	       public ProductVO getProduct(int pdId);
	
	// 순덕
	// 패키지 목록
	public List<ProductVO> packageList();
	// 패키지 상세
	public List<ProductVO> packageInfo();
	
}
