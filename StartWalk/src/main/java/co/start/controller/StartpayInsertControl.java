package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.vo.StartpayVO;
import co.start.vo.UserVO;

public class StartpayInsertControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		UserVO uo = (UserVO)session.getAttribute("AddUser");	
		
		StartpayVO vo = new StartpayVO();
		vo.setUserId(uo.getUserId());
		vo.setPayPoint(0);
		vo.setPayWhy("가입");
		vo.setPayPoint(0);
		
		
		
		return "main.do";
	}

}
