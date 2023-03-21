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
		String id = req.getParameter("userid");
		String pw = req.getParameter("userpasswd");

		UserVO vo = new UserVO();
		vo.setUserId(id);
		vo.setUserPasswd(pw);
		
		UserService service = new UserServiceMybatis();
		UserVO user = service.login(vo);
		System.out.println(user);
		
		// 조회 비교
		
		HttpSession session = req.getSession(); // 요청정보에 있는 세션정보를 있으면 호출. 없으면 세션 객체생성.
		if(user!=null) {
			session.setAttribute("loginUser", user);
			req.setAttribute("message", user.getUserId()+"님의 로그인을 환영합니다.");
		}else {
			req.setAttribute("message", "존재하지 않는 아이디입니다.");
		}

		// session 객체는 웹브라우저별로 계속 유지되는 정보를 담아놓기 좋은 객체.
		
		return "main/main.tiles";

	
	 
	
	}


}

