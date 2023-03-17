package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;

public class PackageListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// db에서 결과 가져오기 -> attribute("list")
		ProductService service = new ProductServiceMybatis();
		List<ProductVO> list = service.packageList();
		
		System.out.println(list);
		
		request.setAttribute("list", list);
		
		return "product/packageList.tiles";
	}

}
