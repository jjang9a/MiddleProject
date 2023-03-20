package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.PageDTO;

public class TravelBoardListControl implements Control {
public static PageDTO pageInfo = null;
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String page = req.getParameter("page");
		if(page == null) {
			page = "1";
		}
		
		// 글목록 - mybatis 활용
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.travelBoardList(Integer.parseInt(page));
		int total = service.getTotalCount();
		req.setAttribute("list", list);
		pageInfo = new PageDTO(Integer.parseInt(page), total);
		req.setAttribute("page", pageInfo);
		
		return "board/travelList.tiles";
	}

}
