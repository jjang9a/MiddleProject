package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.vo.UserVO;

public class CartControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		UserVO vo = (UserVO)session.getAttribute("loginUser");
		
		if(vo == null) {
			// 카트를 눌렀을 때 비로그인 상태라면 로그인 페이지를 띄움
			return "login.do";
		}else{
			// 로그인 되어있다면 카트페이지로 넘어감
			return "pay/cart.tiles";
		}
	}

}
