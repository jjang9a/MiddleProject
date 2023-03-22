package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.CouponVO;
import co.start.vo.UserVO;

public class CouponListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PaymentService service = new PaymentServiceMybatis();
		List<CouponVO> list = service.couponList();
		UserVO vo = (UserVO)request.getSession().getAttribute("loginUser");
		request.setAttribute("coupon", list);
		
		return "pay/couponList.tiles";
	}

}
