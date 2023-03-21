package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.ImagesVO;

public class TravelBoardControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		BoardService service = new BoardServiceMybatis();
		BoardVO vo = service.travelBoardRead(bid);
		List<ImagesVO> list = service.getImgs(bid);
		
		service.countUp(bid);
		
		request.setAttribute("info", vo);
		request.setAttribute("list", list);
		
		return "board/travelRead.tiles";
	}

}
