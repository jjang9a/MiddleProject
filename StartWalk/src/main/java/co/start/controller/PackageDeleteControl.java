package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;

public class PackageDeleteControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductVO vo =(ProductVO)request.getSession().getAttribute("info");
		int pdId = vo.getPdId(); 
		System.out.println("pdId:"+pdId);
		
		
		ProductService service = new ProductServiceMybatis();
		boolean result = service.packageRemove(pdId);
		if(result) {
			request.setAttribute("message", "정상 처리 완료");
			
		}else {
			request.setAttribute("message", "예외 발생.");
		}
		
		return "packageList.do";
	}

}
