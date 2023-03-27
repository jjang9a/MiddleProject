package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.MessageVO;
import co.start.vo.UserVO;

public class writeMsgControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserVO vo = (UserVO)request.getSession().getAttribute("loginUser");
		String userId = vo.getUserId();
		
		MessageVO msg = new MessageVO();
		msg.setDmSender(userId);
		msg.setDmReceiver(request.getParameter("reciver"));
		msg.setDmBody(request.getParameter("body"));
		
		UserService service = new UserServiceMybatis();
		System.out.println(msg);
		service.writeMsg(msg);

		return "senderList.do";
	}

}
