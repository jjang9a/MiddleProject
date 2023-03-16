package co.start.mapper;

import java.util.List;

import co.start.vo.ProductVO;

public interface ProductMapper {
	// 패키지 상품 리스트
	public List<ProductVO> PackageList();
}
