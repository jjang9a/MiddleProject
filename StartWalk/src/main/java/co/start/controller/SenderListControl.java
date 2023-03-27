package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.MessageVO;
import co.start.vo.UserVO;

public class SenderListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		UserVO user = (UserVO)request.getSession().getAttribute("loginUser");
		String Id = user.getUserId();
				
		UserService service = new UserServiceMybatis();
		List<MessageVO> list = service.senderList(Id);
		System.out.println("===================================");
		System.out.println(list);
		
		List<MessageVO> list2 = service.receiverList(Id);
		System.out.println(list2);
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		
		return "message/senderList.tiles";
		
		
	}

}
