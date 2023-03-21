package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class NoticeInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("bTitle");
		BoardService service = new BoardServiceMybatis();
		
		BoardVO vo = service.noticeInfo(code);
		System.out.println(vo);
		
		request.setAttribute("info", vo);
		
		return "client/noticeInfo.tiles";
	}

}
