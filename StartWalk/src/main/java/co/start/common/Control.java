package co.start.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Control {
	public String exec(HttpServletRequest request, HttpServletResponse response);
}
