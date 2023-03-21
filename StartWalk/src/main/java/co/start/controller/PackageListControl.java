package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.PageDTO;
import co.start.vo.ProductVO;
import co.start.vo.SearchVO;

public class PackageListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String page = request.getParameter("page");
		
		if(page == null) {
			page = "1";
		}
		
		// 파라미터: region, order
		String region = request.getParameter("region");
		String order = request.getParameter("order");
		
		region = region == null ? "서울 경기" : region;
		order = order == null ? "start" : order;
		
		SearchVO search = new SearchVO();
		search.setRegion(region);
		search.setOrder(order);
		search.setPage(page);
		
		// db에서 결과 가져오기 -> attribute("list")
		ProductService service = new ProductServiceMybatis();
		List<ProductVO> list = service.packageList(search);
		
		System.out.println(list);
		
		int total = service.getTotalCountTwo(search);
		request.setAttribute("list", list);
		request.setAttribute("page",new PageDTO(Integer.parseInt(page),total));
		
		return "product/packageList.tiles";
	}

}
