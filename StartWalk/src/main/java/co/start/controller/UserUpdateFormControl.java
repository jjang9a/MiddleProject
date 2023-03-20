package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class UserUpdateFormControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String pw = req.getParameter("pwcheck");
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		UserService service = new UserServiceMybatis();
		UserVO user = service.getUserInfo(id);
		
		if(user.getUserPasswd().equals(pw)) {
			return "mypage/userUpdateForm.tiles";
		}else {
			req.setAttribute("message", "비밀번호가 일치하지 않습니다");
			return "mypage/userUpdateCheck.tiles";
		}
	}

}
