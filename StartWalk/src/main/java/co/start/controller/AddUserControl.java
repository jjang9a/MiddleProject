package co.start.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.UserVO;


public class AddUserControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
			try {
				req.setCharacterEncoding("utf-8"); // 
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			String userId = req.getParameter("userId");
			String userPasswd = req.getParameter("userPasswd");
			String userName = req.getParameter("userName");
			String userGender = req.getParameter("userGender");
			String userPhone = req.getParameter("userPhone");
			String userAddr = req.getParameter("userAddr");
			String userMail = req.getParameter("userMail");
			
			
			UserVO vo = new UserVO();
			vo.setUserId(userId);
			vo.setUserPasswd(userPasswd);
			vo.setUserName(userName);
			vo.setUserGender(userGender);
			vo.setUserPhone(userPhone);
			vo.setUserAddr(userAddr);
			vo.setUserMail(userMail);
			
			System.out.println(vo); // 확인용
			
			UserService service = new UserServiceMybatis();
			boolean result = service.addUser(vo);
			System.out.println(result);
			if(result) {
				System.out.println("성공");
				req.setAttribute("message", "성공");
				req.setAttribute("id", vo.getUserId());
			}else {
				System.out.println("예외");
				req.setAttribute("message", "예외");
			}
		
			if(result) {
				return "login.do";
			} else {
				return "loginForm.do";
			}
			
		}


	}
