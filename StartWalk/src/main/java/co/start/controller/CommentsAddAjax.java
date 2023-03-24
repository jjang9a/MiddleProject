package co.start.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.start.common.Control;
import co.start.service.CommentsService;
import co.start.service.CommentsServiceMybatis;
import co.start.vo.CommentsVO;

public class CommentsAddAjax implements Control{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		CommentsVO vo = new CommentsVO();
		int bid = Integer.parseInt(request.getParameter("bid"));
		vo.setBId(bid);
		vo.setUserId(request.getParameter("id"));
		vo.setCoBody(request.getParameter("text"));
		System.out.println(vo);
		CommentsService service = new CommentsServiceMybatis();
		boolean result = service.addComments(vo);
		Map<String, Object> map = new HashMap<>();
		
		Gson gson = new GsonBuilder().create();
		String json = "";
		if(result) {
			map.put("retCode", "Success");
			map.put("member", vo);
			
		} else {
			map.put("retCode", "Fail");
			map.put("member", null);
			
		}
		
			json = gson.toJson(map);
			return json + ".ajax";
	}

}
