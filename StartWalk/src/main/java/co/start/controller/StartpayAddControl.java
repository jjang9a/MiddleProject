package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.StartpayVO;
import co.start.vo.UserVO;

public class StartpayAddControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String uid = request.getParameter("uid");
		String price = request.getParameter("pay");
		String why = request.getParameter("why");
		
		UserVO vo = (UserVO)request.getSession().getAttribute("loginUser");
		
		
		int p = Integer.parseInt(price);
		double plus = p+(p*0.1);
		
		
		
		
		
		StartpayVO startpay= new StartpayVO();
		startpay.setUserId(uid);
		startpay.setPayStart((int)plus);
		startpay.setPayWhy(why);
		
		
		PaymentService service = new PaymentServiceMybatis();
		if(service.AddPay(startpay)) {
			System.out.println("충전 성공");
		} else {
			System.out.println("충전 실패");
		}
		
		return "payList.do";
	}

}
