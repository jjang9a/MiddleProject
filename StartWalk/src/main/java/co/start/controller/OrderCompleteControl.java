package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;

public class OrderCompleteControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		request.setAttribute("orderId", orderId);		
		return "pay/complete.tiles";
	}

}
