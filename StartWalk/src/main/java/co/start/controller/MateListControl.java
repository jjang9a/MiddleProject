package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class MateListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.mateList();
		
		request.setAttribute("mate", list);
		
		System.out.println(list);
		return "board/mateList.tiles";
		
	}

}
