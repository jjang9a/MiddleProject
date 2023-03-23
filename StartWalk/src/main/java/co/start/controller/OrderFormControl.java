package co.start.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.ProductVO;

public class OrderFormControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
//		String[] parameters = req.getParameterValues("id"); // [1001, 1002, 1003....]
//		for (String param : parameters) {
//			System.out.println(param);
//		}
		List<ProductVO> list = new ArrayList<>();
		String str = req.getParameter("selectOrder");
		String[] cartIds = str.split(",");
		
		PaymentService service = new PaymentServiceMybatis();
		
		for(String cartId : cartIds) {
			list.add(service.getCartById(Integer.parseInt(cartId)));
		}
		
		req.getSession().setAttribute("detail", list);
		// cart정보 배열. -> 주문번호생성 -> 상세내역생성 -> 총내역생성 -> 상세내역&총내역

		return "pay/orderForm.tiles";
	}

}
