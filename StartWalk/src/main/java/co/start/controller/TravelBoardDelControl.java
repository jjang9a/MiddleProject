package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;

public class TravelBoardDelControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int bId = Integer.parseInt(request.getParameter("bId"));
		BoardService service = new BoardServiceMybatis();
		service.RemoveNotice(bId);
		
		return "travelBoardList.do";
	}

}
