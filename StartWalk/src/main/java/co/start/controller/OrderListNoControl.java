package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;
import co.start.vo.UserVO;

public class OrderListNoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
	    UserVO uo = (UserVO)session.getAttribute("loginUser");
	    
	    
	    ProductService service = new ProductServiceMybatis();
		List<ProductVO> list = service.orderListdo();
		
		System.out.println(list);
		
		request.setAttribute("list", list);
		
		return "mypage/orderList.tiles";
	}

}
