package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.StartpayVO;

public class StartpayListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PaymentService service = new PaymentServiceMybatis();
		List<StartpayVO> list = service.payList();
		
		
		
		System.out.println(list);
		request.setAttribute("pay", list);
		return "pay/payList.tiles";
	}

}
