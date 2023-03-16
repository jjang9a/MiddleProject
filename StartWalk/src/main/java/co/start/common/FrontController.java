package co.start.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.controller.AddUserControl;
import co.start.controller.AddUserFormControl;
import co.start.controller.LoginControl;
import co.start.controller.LoginFormControl;
import co.start.controller.MainControl;
import co.start.controller.OrderControl;
import co.start.controller.OrderFormControl;

public class FrontController extends HttpServlet {
	private Map<String, Control> map;
	public FrontController() {
		map = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainControl());
		// 가애
		map.put("/orderForm.do", new OrderFormControl()); // 결제요청 페이지
		map.put("order.do", new OrderControl()); // 결제 처리 페이지
		// 순덕
		
		// 용억
		
		// 대준
		// 로그인
		map.put("/loginForm.do", new LoginFormControl()); // 로그인 회원가입 창.
		map.put("/login.do", new LoginControl()); // 로그인 처리 페이지.
		// 회원가입
		map.put("/addUserForm.do", new AddUserFormControl()); // 회원가입 처리 페이지.
		map.put("/addUser.do", new AddUserControl()); // 회원가입 처리 페이지.
		
		
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		System.out.println("do page : "+page);
		
		Control command = map.get(page);
		String viewPage = command.exec(req, resp); // product/productlist.tiles가 넘어옴
		
		if(viewPage.endsWith(".jsp")) {
			viewPage = "/WEB-INF/views/" + viewPage;
//		}else if(viewPage.endsWith(".tiles")) {	
		} else if(viewPage.endsWith(".ajax")) {
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().append(viewPage.substring(0, viewPage.length()-5));
			return;
		} else if(viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);
			return;
		}
		
		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	}
}
