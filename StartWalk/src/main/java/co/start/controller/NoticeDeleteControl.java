package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class NoticeDeleteControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardVO vo = (BoardVO) request.getSession().getAttribute("info");
		int bId = vo.getBId();
		
		BoardService service = new BoardServiceMybatis();
		boolean result = service.RemoveNotice(bId);
		if(result) {
			request.setAttribute("message", "정상 처리 완료");
		}else {
			request.setAttribute("message","예외 발생");
		}
		
		return "noticeList.do";
	}

}
