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

import co.start.common.Control;
import co.start.controller.MainControl;

public class FrontController extends HttpServlet {
	private Map<String, Control> map;
	public FrontController() {
		map = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainControl());
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
		}
		
		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	}
}
