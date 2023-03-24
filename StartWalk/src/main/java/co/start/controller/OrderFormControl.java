package co.start.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.CouponVO;
import co.start.vo.ProductVO;
import co.start.vo.StartpayVO;
import co.start.vo.UserVO;

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
		
		int total=0;
		for(int i=0; i<list.size(); i++) {
			int price = list.get(0).getPdPrice();
			int num = list.get(0).getPdCount();
			total += price * num;
		}

		req.setAttribute("total", total);
		req.getSession().setAttribute("detail", list);
		// cart정보 배열. -> 주문번호생성 -> 상세내역생성 -> 총내역생성 -> 상세내역&총내역
		
		UserVO user = (UserVO)req.getSession().getAttribute("loginUser");
		String userId = user.getUserId();
		
		List<CouponVO> coupons = service.getMyCoupon(userId);
		req.setAttribute("coupons", coupons);

		StartpayVO point = service.myPointNow(userId);
		int sum = point.getPayStart() + point.getPayPoint();
		req.setAttribute("point", sum);

		return "pay/orderForm.tiles";
	}

}
