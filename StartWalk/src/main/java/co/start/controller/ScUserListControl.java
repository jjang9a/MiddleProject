package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.UserVO;

public class ScUserListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		UserVO user = (UserVO)request.getSession().getAttribute("loginUser");
		String Id = user.getUserId();
		
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.scUserList(Id);
		

		request.setAttribute("list", list);
		
		return "mypage/scUserList.tiles";
	}

}
