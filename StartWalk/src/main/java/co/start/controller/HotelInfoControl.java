package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;

public class HotelInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		int key = Integer.parseInt(req.getParameter("key"));
		
		ProductService service = new ProductServiceMybatis();
		ProductVO vo = service.getProduct(key);
		
		req.setAttribute("hotel", vo);
		
		return "product/hotelInfo.tiles";
	}

}
