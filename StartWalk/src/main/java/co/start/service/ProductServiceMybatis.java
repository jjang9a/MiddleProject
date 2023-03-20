package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.ProductMapper;
import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public class ProductServiceMybatis implements ProductService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	// 가애
	
	
	// 순덕
	//패키지 목록(서울 경기)
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
	
	
	// 용억
	@Override
	public List<ProductVO> products(int page){    //명물
		return mapper.productList(page);
	}
	
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
