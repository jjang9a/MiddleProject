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
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		UserVO vo = new UserVO();
//		vo.setId(id);
//		vo.setPasswd(pw);

		UserService service = new UserServiceMybatis();
		vo = service.login(vo);
		System.out.println("after: " + vo);

		// session 객체는 웹브라우저별로 계속 유지되는 정보를 담아놓기 좋은 객체.
		HttpSession session = req.getSession(); // 요청정보에 있는 세션정보를 있으면 호출. 없으면 세션 객체생성.
		session.setAttribute("id", id);

		try {
			resp.sendRedirect("userList.do");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;

	
	 
	
	}


}

