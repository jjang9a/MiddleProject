package co.start.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.CouponVO;
import co.start.vo.ProductVO;
import co.start.vo.StartpayVO;
import co.start.vo.UserVO;

public class OrderDirectControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		List<ProductVO> detail = new ArrayList<>();
		
		ProductService ps = new ProductServiceMybatis();
		ProductVO vo = ps.packageInfo(Integer.parseInt(req.getParameter("pdid")));
		vo.setPdCount(1);
		
		detail.add(vo);
		int total = vo.getPdPrice();
		
		req.setAttribute("total", total);
		req.getSession().setAttribute("detail", detail);
		
		UserVO user = (UserVO)req.getSession().getAttribute("loginUser");
		String userId = user.getUserId();
		
		PaymentService service = new PaymentServiceMybatis();
		List<CouponVO> coupons = service.getMyCoupon(userId, "사용가능");
		req.setAttribute("coupons", coupons);

		StartpayVO point = service.myPointNow(userId);
		System.out.println("my point : "+point);
		int sum = point.getPayStart() + point.getPayPoint();
		req.setAttribute("point", sum);

		return "pay/orderForm.tiles";
	}

}
