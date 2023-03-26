package co.start.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.UserVO;

public class MateAddControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// int bid = Integer.parseInt(request.getParameter("bid"));
		String userId = request.getParameter("id");
		String head = request.getParameter("type");
		String title = request.getParameter("title");
		String contents = request.getParameter("text");
		// String category = request.getParameter("cate");
		HttpSession session = request.getSession();
		UserVO uo = (UserVO)session.getAttribute("loginUser");	
		
		
		
		BoardVO vo = new BoardVO();
		
		vo.setUserId(userId);
		vo.setBCategory(head);
		if (head.equals("WI")) {
			vo.setBHead("[동행]");
		} else if(head.equals("WR")){
			vo.setBHead("[매칭후기]");
		}
		vo.setBTitle(title);
		vo.setBContents(contents);
		// vo.setBCategory(category);

		System.out.println(vo);

		BoardService service = new BoardServiceMybatis();
		service.addMate(vo);

		return "mateList.do";
	}
}