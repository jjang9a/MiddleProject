package co.start.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;

public class LoginFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "login/login.jsp";
	}
}
