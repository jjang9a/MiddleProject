package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.OrderVO;
import co.start.vo.PageDTO;
import co.start.vo.ProductVO;
import co.start.vo.UserVO;

public class orderListControl implements Control {
public static PageDTO pageInfo = null;
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 페이징
		String page = request.getParameter("page");
		if(page==null) {
			page = "1";
		}
		
		// 주문상태
		
		ProductService serviceStatus = new ProductServiceMybatis();		
		List<OrderVO> status = serviceStatus.countOrderStatus();
		System.out.println("status" + status);
		
		request.setAttribute("status", status);
		
		
		// 주문목록
		ProductService service = new ProductServiceMybatis();
		List<ProductVO> list = service.orderList(Integer.parseInt(page));
		int total = service.getTotalCount();
		
		System.out.println(list);
		
		request.setAttribute("list", list);
		
		pageInfo = new PageDTO(Integer.parseInt(page), total);
		request.setAttribute("page", pageInfo);
		
		return "mypage/orderList.tiles";
	}

}