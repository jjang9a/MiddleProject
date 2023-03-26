package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class GradeListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserService service = new UserServiceMybatis();
		List<UserVO> list = service.gradeList();
		
		System.out.println(list);
		
		
		UserVO vo = (UserVO)request.getAttribute("loginUser");
		
		request.setAttribute("gm", vo);
		request.setAttribute("gd", list);
		
		return "managerService/gradeList.tiles";
	}

}
