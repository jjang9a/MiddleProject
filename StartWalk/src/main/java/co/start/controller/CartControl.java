package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.ProductVO;
import co.start.vo.UserVO;

public class CartControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		UserVO vo = (UserVO)session.getAttribute("loginUser");
		
		if(vo == null) {
			// 카트를 눌렀을 때 비로그인 상태라면 로그인 페이지를 띄움
			return "loginForm.do";
		}else{
			PaymentService service = new PaymentServiceMybatis();
			List<ProductVO> list = service.getCartList(vo.getUserId());
			req.setAttribute("cart", list);
			
			int sum = 0;
			for(ProductVO prod : list) {
				int pay = prod.getPdCount() * prod.getPdPrice();
				sum += pay;
			}
			
			System.out.println(sum);
			req.setAttribute("initSum", sum);
			
			return "pay/cart.tiles";
		}
	}

}
