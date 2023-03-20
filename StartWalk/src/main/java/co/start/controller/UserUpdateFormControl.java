package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.vo.UserVO;

public class UserUpdateFormControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String pw = req.getParameter("pwcheck");
		
		HttpSession session = req.getSession();
		UserVO vo = (UserVO)session.getAttribute("loginUser");
		
		if(vo.getUserPasswd().equals(pw)) {
			req.setAttribute("oldInfo", vo);
			return "mypage/userUpdateForm.tiles";
		}else {
			req.setAttribute("message", "비밀번호가 일치하지 않습니다");
			return "mypage/updateCheck.tiles";
		}
	}

}
