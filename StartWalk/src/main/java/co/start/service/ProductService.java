package co.start.service;

import java.util.List;

import co.start.vo.ImagesVO;
import co.start.vo.OrderVO;
import co.start.vo.PdreviewVO;
import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public interface ProductService {

	// 가애
	public boolean addProd(ProductVO vo);
	public List<ImagesVO> getImgs(int id);
	
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
	// 전체 건수(패키지 전체 건수)
    public int getTotalCountTwo(SearchVO search);
	// 패키지 상세
	public ProductVO packageInfo(int pdId);
	public List<PdreviewVO> reviewList(int pdId);
	
	// 여행 패키지 글쓰기 
	public boolean addPackage(ProductVO vo);
	public int searchPdId();
	public boolean imgAttach(ImagesVO vo);
	// 여행 패키지 글 수정
	public boolean packageModify(ProductVO vo);
	// 여행 패키지 글 삭제
	public boolean packageRemove(int pdId);
	// 구매 목록
	public List<ProductVO> orderList(int page);
	public List<ProductVO> orderListdo();
	// 주문상태
	public List<OrderVO> countOrderStatus(String id);
	// 리뷰 작성
	public boolean addPdreview(PdreviewVO vo);
}
