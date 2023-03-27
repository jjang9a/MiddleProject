package co.start.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.CouponVO;
import co.start.vo.StartpayVO;
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
		if (result) {
			System.out.println("성공");
			req.setAttribute("message", "가입을 환영합니다! 로그인 해 주세요.");

			
			  StartpayVO pay = new StartpayVO();
			  pay.setUserId(userId); 
			  pay.setPayStart(0); 
			  pay.setPayWhy("회원가입");
			  pay.setPayPoint(0);
			  System.out.println(pay); 
			  PaymentService ps = new PaymentServiceMybatis(); 
			  ps.insertPay(pay);
			  
			  ps.giveCoupon(userId);
			 
		} else {
			System.out.println("예외");
			req.setAttribute("message", "회원가입 실패. 다시 시도해주세요");
		}

		return "login/login.jsp";

	}

}
