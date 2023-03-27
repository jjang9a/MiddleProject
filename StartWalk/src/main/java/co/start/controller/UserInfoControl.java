package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class UserInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String uid = request.getParameter("id");
		UserService service= new UserServiceMybatis();
		UserVO vo = service.getUserInfo(uid);
		
		request.setAttribute("info", vo);
		
		
		return "managerService/modifyGradeForm.tiles";
	}

}
