package co.start.service;

import java.util.List;

import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public interface ProductService {

	//용억
		//상품목록(명물)
	       public List<ProductVO> products(int page);
	    // 상품목록(호텔)
	       public List<ProductVO> hotels();
	    //상품상세
	       public ProductVO getProduct(int pdId);

	   // 전체 건수
	     public int getTotalCount();
	       


	
	// 순덕
	// 패키지 목록
	public List<ProductVO> packageList(SearchVO search);
	
	// 패키지 상세
	public ProductVO packageInfo(int pdId);
	
}
