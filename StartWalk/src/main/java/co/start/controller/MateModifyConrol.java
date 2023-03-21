package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class MateModifyConrol implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String bid = request.getParameter("bid");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		
		BoardVO board = new BoardVO();
		board.setBId(Integer.parseInt(bid));
		board.setBTitle(title);
		board.setBContents(text); 
		
		System.out.println("--------------------------------");
		System.out.println(board);
		BoardService service = new BoardServiceMybatis();
		if(service.ModifyMate(board)) {
			System.out.println("성공");
		} else {
			System.out.println("asdsad");
		}
		return "mateList.do";
	}

}
