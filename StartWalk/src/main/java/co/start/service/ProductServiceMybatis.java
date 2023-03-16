package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.ProductMapper;
import co.start.vo.ProductVO;

public class ProductServiceMybatis implements ProductService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	//용억
	public List<ProductVO> products(){
		return mapper.productList();
	}

	@Override
	public ProductVO getProduct(int pdId) {
		
		return mapper.selectProduct(pdId);
	}
	
}
