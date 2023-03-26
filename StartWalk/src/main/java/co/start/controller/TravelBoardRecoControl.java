package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;

public class TravelBoardRecoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int bid = Integer.parseInt(request.getParameter("bid"));
		BoardService service = new BoardServiceMybatis();
		boolean result = service.likeUp(bid);
		String json = "";
		if(result) { // {"retCode" : "Success"}
			json = "{\"retCode\" : \"Success\"}";
		}else { // {"retCode" : "Fail"}
			json = "{\"retCode\" : \"Fail\"}";
		}
		return json + ".ajax";
	}

}
