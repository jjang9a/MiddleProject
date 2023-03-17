package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;

public class HotelListControl implements Control {

	@Override    //용억
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService service = new ProductServiceMybatis();
		List<ProductVO> list = service.hotels();
		
		request.setAttribute("hotel", list);
		
		
		return "product/hotelList.tiles";
	}

}
