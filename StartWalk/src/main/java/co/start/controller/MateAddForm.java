package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.vo.UserVO;

public class MateAddForm implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "board/mateAddForm.tiles";
	}

}
