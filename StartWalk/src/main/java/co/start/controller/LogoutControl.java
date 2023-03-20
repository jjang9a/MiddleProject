package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;

public class LogoutControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().invalidate();
		return "main.do";
	}

}
