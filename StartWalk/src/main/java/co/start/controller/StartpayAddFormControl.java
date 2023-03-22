package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.vo.UserVO;

public class StartpayAddFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		 
		UserVO vo = (UserVO)request.getSession().getAttribute("loginUser");
		
	    
		
		return "pay/payAddForm.tiles";
	}

}
