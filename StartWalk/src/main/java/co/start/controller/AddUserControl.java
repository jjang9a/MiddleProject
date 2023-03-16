package co.start.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;


public class AddUserControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
			String userId = req.getParameter("userId");
			String userPasswd = req.getParameter("userPasswd");
			String userName = req.getParameter("userName");
			String userGender = req.getParameter("userName");
			int userPhone = Integer.parseInt(req.getParameter("userPhone"));
			String userAddr = req.getParameter("userAddr");
			String userMail = req.getParameter("userMail");
			
			
			UserVO vo = new UserVO();
			vo.setUserId(userId);
			vo.setUserPasswd(userPasswd);
			vo.setUserName(userName);
			vo.setUserGender(userGender);
			vo.setUserAddr(userAddr);
			vo.setUserMail(userMail);
			
			
			UserService service = new UserServiceMybatis();
		
			if(service.addUser(vo)) {
				return "AddUser.do";
			} else {
				return "loginForm.do";
			}
			
		}


	}
