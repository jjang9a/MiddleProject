package co.start.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class ScSearchControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp)  {
		String bid = req.getParameter("bId");
		BoardService service = new BoardServiceMybatis();
		
	//	BoardVO vo = new BoardVO();
	//	BoardVO result = service.getBoard(bId);
		
	//	req.setAttribute("result", service.getBoard(bId));
	//	vo.setUserId(bId);
		
		
		return "serviceList/ManagerList.tiles";
		
		
	}

}
