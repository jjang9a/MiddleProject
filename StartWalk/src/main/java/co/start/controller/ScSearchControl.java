package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ScManagerService;
import co.start.service.ScManagerServiceMybatis;

public class ScSearchControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ScManagerService service = new ScManagerServiceMybatis();
		
		return "serviceList/ManagerList.tiles";
		
		
	}

}
