package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class NoticeModifyControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardVO modify = (BoardVO) request.getSession().getAttribute("info");
		int  bId = modify.getBId();
		
		String bTitle = request.getParameter("boardTitle");
		System.out.println(bTitle);
		String bContents = request.getParameter("boardContents");
		System.out.println(bContents);
		
		BoardVO vo = new BoardVO();
		vo.setBId(bId);
		vo.setBTitle(bTitle);
		vo.setBContents(bContents);
		
		System.out.println(vo);
		BoardService service = new BoardServiceMybatis();
		service.modifyNotice(vo);
		
		return "noticeList.do";
	}

}
