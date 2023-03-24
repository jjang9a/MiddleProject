package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.vo.BoardVO;

public class NoticeModifyFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "client/noticeModifyForm.tiles";
	}

}
