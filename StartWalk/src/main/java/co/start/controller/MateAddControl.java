package co.start.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class MateAddControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response){
		

		int bid = Integer.parseInt(request.getParameter("bid"));
		String userId = request.getParameter("id");
		String title = request.getParameter("btitle") ;
		String contents = request.getParameter("con");
		String category = request.getParameter("cate");
		
		BoardVO vo = new BoardVO();
		vo.setBId(bid);
		vo.setBTitle(title);
		vo.setBContents(contents);
		vo.setBCategory(category);
		
		BoardService service = new BoardServiceMybatis();
//		if(service.addMate(vo)) {
//			return "board/mateList.tiles";
//		} else {
//			try {
//				request.getRequestDispatcher("WEB-INF/board/mateAddForm.jsp").forward(request, response);
//			
//	} catch(ServletException e) {
//		e.printStackTrace();
//	}
//
//}
		return null;
	}
}