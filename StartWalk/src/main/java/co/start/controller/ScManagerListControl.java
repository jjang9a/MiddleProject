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
		
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.scManagerList();

//		String id = request.getParameter("userId");
		
		request.setAttribute("list", list);
		
		
		
		// 폴더명 /파일명
		return "managerService/serviceList.tiles";
			
			

}
}
