package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.MessageVO;

public class SenderListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		UserService service = new UserServiceMybatis();
		List<MessageVO> list = service.senderList();
		
		List<MessageVO> list2 = service.receiverList();
		request.setAttribute("list", list);
		request.setAttribute("list2", response);
		return "message/senderList.tiles";
		
		
	}

}
