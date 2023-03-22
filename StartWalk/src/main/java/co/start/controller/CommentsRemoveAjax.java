package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.CommentsService;
import co.start.service.CommentsServiceMybatis;
import co.start.vo.UserVO;

public class CommentsRemoveAjax implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentsService service = new CommentsServiceMybatis();
		
		boolean result = service.removeComments(Integer.parseInt(request.getParameter("coid")));
		String json = "";
		if(result) {
			json= "{\"retCode\" : \"Success\"}";
		}else {
			json = "{\"retCode\" : \"Fail\"}";
		}
		return json + ".ajax";
	}

}
