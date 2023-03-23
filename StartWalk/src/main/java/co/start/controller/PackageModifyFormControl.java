package co.start.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.vo.ProductVO;

public class PackageModifyFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductVO vo = (ProductVO) request.getSession().getAttribute("modify");
		System.out.println("vo: "+vo);
		
		return "product/packageModifyForm.tiles";
	}

}
