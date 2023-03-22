package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.ProductMapper;
import co.start.vo.BoardVO;
import co.start.vo.ImagesVO;
import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public class ProductServiceMybatis implements ProductService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	// 가애
	@Override
	public boolean addProd(ProductVO vo) {
		System.out.println("vo====> " + vo);
		return mapper.insertProduct(vo) == 1;
	}
	@Override
	public List<ImagesVO> getImgs(int id) {
		return mapper.images(id);
	}
	
	// 순덕
	//패키지 목록
	@Override
	public List<ProductVO> packageList(SearchVO search) { 
		return mapper.packageListWithPaging(search);
	}

	@Override
	public ProductVO packageInfo(int pdId) {
		return mapper.packageInfo(pdId);
	}
	@Override
	public int getTotalCountTwo(SearchVO search) {
		// TODO Auto-generated method stub
		return mapper.getTotalCountTwo(search);
	}
	@Override
	public boolean packageRemove(int pdId) {		// 패키지 삭제.
		return mapper.deletePackage(pdId);
	}
	@Override
	public boolean addPackage(ProductVO vo) {	// 패키지 글쓰기.
		int r = mapper.insertPackage(vo);
		return r == 1;
	}
	@Override
	public int searchPdId() {
		return mapper.searchPdId();
	}

	@Override
	public boolean imgAttach(ImagesVO vo) {
		return mapper.imgAttach(vo)==1;
	}
	@Override
	public boolean packageModify(ProductVO vo) {	 // 패키지 수정.
		int r = mapper.updatePackage(vo);
		return r == 1;
	}
	@Override
	public List<ProductVO> orderList(int page) {		// 구매 목록
		return mapper.orderList(page);
	}
	
	
	
	// 용억
	@Override
	public List<ProductVO> products(int page){    //명물
		return mapper.productList(page);
	}
//	public boolean addMate(BoardVO vo) {
//		int r = mapper.insertMate(vo);
//		return r==1;
//	}
	
	@Override
	public List<ProductVO> hotels() {    //호텔
		return mapper.hotelList();
	}
	
	@Override
	public ProductVO getProduct(int pdId) {	
		return mapper.selectProduct(pdId);
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return mapper.getTotalCount();
	}

	
	// 대준

	
	
}
