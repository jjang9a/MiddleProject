package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.PdreviewVO;

public class AddReviewControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String prBody = request.getParameter("prBody");
		String prStar = request.getParameter("prStar");
		
		PdreviewVO vo = new PdreviewVO();
		vo.setPrBody(prBody);
		vo.setUserId(request.getParameter("userId"));
		vo.setPdId(Integer.parseInt(request.getParameter("pdId")));
		vo.setPrStar(Integer.parseInt(prStar));
		
		System.out.println(vo);

		ProductService service = new ProductServiceMybatis();
		service.addPdreview(vo);
		
		return "orderList.do";
	}

}
