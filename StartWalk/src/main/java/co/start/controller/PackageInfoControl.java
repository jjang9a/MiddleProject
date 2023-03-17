package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;

public class PackageInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "product/packageInfo.tiles";
	}

}
