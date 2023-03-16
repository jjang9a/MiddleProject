package co.start.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.start.common.DataSource;
import co.start.mapper.ProductMapper;
import co.start.vo.ProductVO;

public class ProductServiceMybatis implements ProductService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	@Override
	public List<ProductVO> packageList() {
		// TODO Auto-generated method stub
		return mapper.PackageList();
	}
	
	
	
}
