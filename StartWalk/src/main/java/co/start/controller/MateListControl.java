package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.PageDTO;

public class MateListControl implements Control {
	public static PageDTO pageInfo = null;
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page");
		if(page==null) {
			page="1";
		}
		
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.mateList(Integer.parseInt(page));
		int total = service.getTotalCounts();
		request.setAttribute("mate", list);
		pageInfo = new PageDTO(Integer.parseInt(page),total);
		request.setAttribute("page", pageInfo);
		
		return "board/mateList.tiles";
		
	}

}
