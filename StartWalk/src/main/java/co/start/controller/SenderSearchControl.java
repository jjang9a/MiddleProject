package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.MessageVO;
import co.start.vo.UserVO;

public class SenderSearchControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int dmId = Integer.parseInt(request.getParameter("dmId"));
		UserService service = new UserServiceMybatis();
		
		MessageVO vo = service.dmSearch(dmId);
		System.out.println(vo);
		
		request.setAttribute("sd", vo);
		
		return "message/senderSearch.tiles";
	}

}
