package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.start.common.Control;
import co.start.vo.BoardVO;

public class MateModifyFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardVO vo =(BoardVO) request.getSession().getAttribute("mo");
		
		
		return "board/mateModifyForm.tiles";
	}

}
