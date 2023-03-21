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
		

		//int bid = Integer.parseInt(request.getParameter("bid"));
		String userId = request.getParameter("id");
		String title = request.getParameter("title") ;
		String contents = request.getParameter("text");
		//String category = request.getParameter("cate");
		
		BoardVO vo = new BoardVO();
		vo.setUserId(userId);
		vo.setBTitle(title);
		vo.setBContents(contents);
		//vo.setBCategory(category);
		
		System.out.println(vo);
		
		BoardService service = new BoardServiceMybatis();
		service.addMate(vo);
		
		return "mateList.do";
	}
}