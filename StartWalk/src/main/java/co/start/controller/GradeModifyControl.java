package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class GradeModifyControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String uid = request.getParameter("uid");
		String grade = request.getParameter("gd");
		
		UserVO user = new UserVO();
		user.setUserId(uid);
		user.setUserGrade(grade);
		
		UserService service = new UserServiceMybatis();
		if(service.ModifyGrade(user))
		{	
			System.out.println("등급업!!");
		} else {
			System.out.println("실패");
		}
		return "gradeList.do";
	}

}
