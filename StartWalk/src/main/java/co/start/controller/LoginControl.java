package co.start.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class LoginControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPasswd");

		UserVO vo = new UserVO();
		
		UserService service = new UserServiceMybatis();
		
		vo = service.login(id);
		vo = service.login(pw);
		System.out.println(vo);
		
		// 조회 비교
		
		HttpSession session = req.getSession(); // 요청정보에 있는 세션정보를 있으면 호출. 없으면 세션 객체생성.
		if(vo!=null) {
			session.setAttribute("userId", id);
			//session.setAttribute("userId", vo);
			req.setAttribute("message", id+"님의 로그인을 환영합니다.");
		}else {
			req.setAttribute("message", "존재하지 않는 아이디입니다.");
		}

		// session 객체는 웹브라우저별로 계속 유지되는 정보를 담아놓기 좋은 객체.
		
		return "main/main.tiles";

	
	 
	
	}


}

