package co.start.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.PageDTO;


public class ScManagerListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page");
		String id = request.getParameter("userId");
		
		
		 if(page ==null) {
		    	page = "1";
		    }
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.scManagerList(Integer.parseInt(page));
		int total = service.getTotalCount();
		
		request.setAttribute("list", list);
		request.setAttribute("page", new PageDTO(Integer.parseInt(page), total));

		
		// 폴더명 /파일명
		return "managerService/serviceList.tiles";
			
			

}
}
