package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.StartpayVO;
import co.start.vo.UserVO;

public class StartpayListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PaymentService service = new PaymentServiceMybatis();
		List<StartpayVO> list = service.payList();
		
		HttpSession session = request.getSession();
		UserVO uo = (UserVO)session.getAttribute("loginUser");
		
		System.out.println(uo);
		
		
		PaymentService vo = new PaymentServiceMybatis();
		
		
		StartpayVO mo = vo.myPointNow(uo.getUserId());
		
		int al = mo.getPayStart();
		int ak = mo.getPayPoint();
		
		UserVO ui = new UserVO();
		
		System.out.println(list);
		request.setAttribute("pay", list);
		request.setAttribute("to", al);
		request.setAttribute("tal", ak);
		return "pay/payList.tiles";
	}

}
