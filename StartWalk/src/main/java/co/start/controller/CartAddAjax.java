package co.start.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.CartVO;
import co.start.vo.UserVO;

public class CartAddAjax implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartVO vo = new CartVO();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		UserVO user = (UserVO)request.getSession().getAttribute("loginUser");
		vo.setUserId(user.getUserId());
		vo.setPdId(Integer.parseInt(request.getParameter("pdid")));
		
		PaymentService service = new PaymentServiceMybatis();
		
		CartVO check = service.getCartInfo(vo);
		
		boolean result = false;
		if(check == null) {
			vo.setPdCount(1);
			result = service.addCart(vo);
		}else {
			vo.setPdCount(check.getPdCount()+1);
			vo.setCartId(check.getCartId());
			result = service.countUpdate(vo);
		}
		
		System.out.println(vo);
		
		Map<String, Object> map = new HashMap<>();
		
		Gson gson = new GsonBuilder().create();
		String json = "";
		
		if(result) {
			map.put("retCode", "Success");
			map.put("cart", vo);
		}else {
			map.put("retCode", "Fail");
			map.put("cart", null);
		}
		json = gson.toJson(map);
		return json + ".ajax";
	}

}
