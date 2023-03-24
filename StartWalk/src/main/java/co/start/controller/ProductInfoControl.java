package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ImagesVO;
import co.start.vo.ProductVO;

public class ProductInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("pdId");
		ProductService service = new ProductServiceMybatis();
		
		
		
		ProductVO vo = service.getProduct(Integer.parseInt(code));
		
		
		request.setAttribute("info", vo);
		
		List<ImagesVO> img = service.getImgs(Integer.parseInt(code));		
		request.setAttribute("img",img);
		return "product/productInfo.tiles";
		
	}

}
