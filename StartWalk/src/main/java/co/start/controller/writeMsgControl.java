package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.vo.UserVO;

public class writeMsgControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserVO vo = (UserVO)request.getSession().getAttribute("loginUser");
		String userId = vo.getUserId();
		request.setAttribute("userId", userId);
		return "message/addPopup.jsp";
	}

}
