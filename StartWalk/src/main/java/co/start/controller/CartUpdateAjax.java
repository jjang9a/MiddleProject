package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.CartVO;
import co.start.vo.UserVO;

public class CartUpdateAjax implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PaymentService service = new PaymentServiceMybatis();
		CartVO vo = new CartVO();
		vo.setCartId(Integer.parseInt(request.getParameter("cartId")));
		vo.setPdCount(Integer.parseInt(request.getParameter("tCount")));
		
		boolean result = service.countUpdate(vo);
		String json = "";
		if(result) { // {"retCode" : "Success"}
			json = "{\"retCode\" : \"Success\"}";
		}else { // {"retCode" : "Fail"}
			json = "{\"retCode\" : \"Fail\"}";
		}
		return json + ".ajax";
	}

}
