package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;

public class AddReviewFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int pdId = Integer.parseInt(request.getParameter("pdId"));
		
		request.setAttribute("pdId", pdId);
		
		return "mypage/addReviewForm.tiles";
	}

}
