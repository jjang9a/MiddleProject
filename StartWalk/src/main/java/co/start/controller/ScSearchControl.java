package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.UserVO;

public class ScSearchControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp)  {
		int bId = Integer.parseInt(req.getParameter("bId"));
		BoardService service = new BoardServiceMybatis();
		
		BoardVO vo = service.scSearch(bId);
		
		HttpSession session = req.getSession();
		UserVO us = (UserVO)session.getAttribute("loginUser");
		System.out.println(vo);
		
		
		req.setAttribute("sc", vo);
		
		return "managerService/scSearch.tiles";
		
		
	}

}
