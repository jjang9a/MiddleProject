package co.start.mapper;

import java.util.List;

import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public interface ProductMapper {

	
	//상품목록 (용억)
	public List<ProductVO> productList(int page);    //명물
	
	public List<ProductVO> hotelList();  //숙소
	//상품상세 (용억)
	public ProductVO selectProduct(int pdId);
	
	//페이징
	public List<ProductVO> productListWithPaging(int page);
	
	//전체 글 수
	public int getTotalCount();
	
	//조회 수 증가
	public int updateCount(int PdId);

	
	// 패키지 상품 리스트 (순덕)
	public List<ProductVO> packageList(SearchVO search);
	
	public List<ProductVO> packageListWithPaging(SearchVO search);
	//패키지 상품 지역별 전체 글 수 (순덕)
	public int getTotalCountTwo(SearchVO search);
	
	// 패키지 상품 상세 (순덕)
	public ProductVO packageInfo(int pdId);
	
	// 패키지 게시글 등록
	public int insertPackage(ProductVO vo);
	// 패키지 게시글 수정
	public int updatePackage(ProductVO vo);
	// 패키지 게시글 삭제
	public boolean deletePackage(int pdId);

}
