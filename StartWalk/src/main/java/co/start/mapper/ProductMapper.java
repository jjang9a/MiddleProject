package co.start.mapper;

import java.util.List;

import co.start.vo.ProductVO;

public interface ProductMapper {

	
	//상품목록 (용억)
	public List<ProductVO> productList();
	
	//상품상세 (용억)
	public ProductVO selectProduct(int pdId);

	// 패키지 상품 리스트
	public List<ProductVO> PackageList();

}
