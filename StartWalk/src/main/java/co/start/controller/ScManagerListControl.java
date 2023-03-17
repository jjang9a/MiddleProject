package co.start.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ScManagerService;
import co.start.service.ScManagerServiceMybatis;
import co.start.vo.BoardVO;


public class ScManagerListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ScManagerService service = new ScManagerServiceMybatis();
		List<BoardVO> list = service.BoardList();
		
		request.setAttribute("boardlist", list);
		
	
		
		return "serviceList/ManagerList.tiles";
			
			

}
}
