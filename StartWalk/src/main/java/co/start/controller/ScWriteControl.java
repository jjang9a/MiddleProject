package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class ScWriteControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String userId = request.getParameter("id");
		String title = request.getParameter("title") ;
		String contents = request.getParameter("text");
		
		BoardVO vo = new BoardVO();
		vo.setUserId(userId);
		vo.setBTitle(title);
		vo.setBContents(contents);
		
		System.out.println(vo);
		
		BoardService service = new BoardServiceMybatis();
		service.scWrite(vo);

		return "scManagerList.do";
		
	}

}
