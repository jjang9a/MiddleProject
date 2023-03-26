package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ImagesVO;
import co.start.vo.PdreviewVO;
import co.start.vo.ProductVO;

public class PackageInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("pdId");
		ProductService service = new ProductServiceMybatis();
		
		ProductVO vo = service.packageInfo(Integer.parseInt(code));
		
		System.out.println(vo);
		
		
		List<PdreviewVO> list = service.reviewList(Integer.parseInt(code));
		
		request.setAttribute("list", list);
		
		
		request.getSession().setAttribute("info", vo);
		request.getSession().setAttribute("modify",vo);
		
		List<ImagesVO> img = service.getImgs(Integer.parseInt(code));
		request.setAttribute("img", img);
		
//		request.setAttribute("info",vo);
		
		return "product/packageInfo.tiles";
	}

}
