package co.start.mapper;

import java.util.List;

import co.start.vo.ImagesVO;
import co.start.vo.OrderVO;
import co.start.vo.PdreviewVO;
import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public interface ProductMapper {

	// 가애.
	public int insertProduct(ProductVO vo); // 판매상품 추가
	public List<ImagesVO> images(int id); // 첨부 이미지 가져오기
	
	
	// 용억.
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

	
	// 순덕.
	// 패키지 상품 리스트 
	public List<ProductVO> packageList(SearchVO search);
	public List<ProductVO> packageListWithPaging(SearchVO search);
	//패키지 상품 지역별 전체 글 수 
	public int getTotalCountTwo(SearchVO search);
	// 패키지 상품 상세 (순덕)
	public ProductVO packageInfo(int pdId);
	public List<PdreviewVO> reviewList(int pdId);
	// 패키지 게시글 등록
	public int insertPackage(ProductVO vo);
	public int searchPdId();
	public int imgAttach(ImagesVO vo);
	// 패키지 게시글 수정
	public int updatePackage(ProductVO vo);
	// 패키지 게시글 삭제
	public boolean deletePackage(int pdId);
	
	// 주문 목록 
	public List<ProductVO> orderList(int page);
	public List<ProductVO> orderListdo();
	// 주문상태 
	public List<OrderVO> countOrderStatus(String id);
	// 리뷰 등록
	public int insertPdreview(PdreviewVO vo);
	
	// 메인화면
	// Best 여행 패키지
	public List<ProductVO> mainPackageList();
	// Best 숙소
	public List<ProductVO> mainHotelList();
	// Best 명물
	public List<ProductVO> mainProductList();
	// 리뷰 리스트
	public List<PdreviewVO> mainReviewList();
	// 메인 여행 패키지 상품 수
	public ProductVO mainCountPackage();
	// 메인 숙수 및 지역명물 상품 수
	public ProductVO mainCountProduct();	
	

}
