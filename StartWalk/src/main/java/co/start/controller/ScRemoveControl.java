package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.ProductVO;

public class ScRemoveControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		BoardVO vo =(BoardVO)request.getSession().getAttribute("sc");
		int bId = vo.getBId(); 
		System.out.println(vo);
		
		
		BoardService service = new BoardServiceMybatis();
		boolean result = service.scRemove(bId);
		if(result) {
			request.setAttribute("message", "정상 처리 완료");
			
		}else {
			request.setAttribute("message", "예외 발생.");
		}
		
		return "scRemove.do";
		
		
	}
}
