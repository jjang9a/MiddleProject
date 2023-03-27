package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

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
		
		int statusA = 0;
		int statusB = 0;
		int statusC = 0;
		int statusD = 0;
		int statusE = 0;
		
		for(OrderVO i: status) {
			if(i.getOrderStatus().equals("결제대기")) {
				statusA ++;
			}else if(i.getOrderStatus().equals("결제완료")){
				statusB ++;
			}else if(i.getOrderStatus().equals("배송전")){
				statusC ++;
			}else if(i.getOrderStatus().equals("배송중")){
				statusD ++;
			}else if(i.getOrderStatus().equals("배송완료")){
				statusE ++;
			}
			
		}
		
		request.setAttribute("statusA", statusA);
		request.setAttribute("statusB", statusB);
		request.setAttribute("statusC", statusC);
		request.setAttribute("statusD", statusD);
		request.setAttribute("statusE", statusE);
		System.out.println(statusA);
		System.out.println(statusB);
		System.out.println(statusC);
		System.out.println(statusD);
		System.out.println(statusE);
		
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