package co.start.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class UserUpdateControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		HttpSession session = req.getSession();
		UserVO user = (UserVO)session.getAttribute("loginUser");
		 
		req.setAttribute("oldInfo", user);
		
		user.setUserMail(req.getParameter("mail"));
		if(!req.getParameter("pw1").equals("")) {
			user.setUserPasswd(req.getParameter("pw1"));
		}
		user.setUserAddr(req.getParameter("addr"));
		user.setUserPhone(Integer.parseInt(req.getParameter("phone")));
		
		UserService service = new UserServiceMybatis();
		
		if(service.modifyUser(user)) {
			req.setAttribute("message", "정상 처리 완료");
		}else {
			req.setAttribute("message", "예외 발생");
		}
		
		return "main.do"; // 마이페이지 메인화면으로 링크(아직 주소가 없어서 못넣음)
	}

}
