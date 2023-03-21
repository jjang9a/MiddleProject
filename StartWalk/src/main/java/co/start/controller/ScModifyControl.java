package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class ScModifyControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String bid = req.getParameter("bid");
		
		BoardService service = new BoardServiceMybatis();
		BoardVO vo = service.scSearch(Integer.parseInt(bid));

		return "managerService/serviceList.tiles";
	}

}
