package co.start.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;

public class ProductInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("pdId");
		ProductService service = new ProductServiceMybatis();
		
		
		System.out.println(code);
		ProductVO vo = service.getProduct(Integer.parseInt(code));
		
		System.out.println(vo);
		request.setAttribute("info", vo);
		
				
		return "product/productInfo.tiles";
		
	}

}
