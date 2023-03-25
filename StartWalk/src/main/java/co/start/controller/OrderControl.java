package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.CartVO;
import co.start.vo.OrderVO;
import co.start.vo.PaydetailVO;
import co.start.vo.ProductVO;
import co.start.vo.StartpayVO;
import co.start.vo.UserVO;

public class OrderControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		
		/* 	받아와야 할 값
		 *	테이블 저장 : 유저id, 사용된 쿠폰번호, 배송인, 연락처, 주소, 결제수단, 총결제액, 주문상태(카드면 완료, 무통이면 대기), 실결제액, 포인트사용액
		 * 	주문상품 리스트 저장(인서트)
		 *  사용된 쿠폰 none이 아니면 쿠폰번호로 조회해서 사용불가로 update하기
		 *  적립금 사용액 받아와서 포인트에서 차감, 포인트보다 크면 페이에서 차감
		 *  결제한 상품 카트에서 삭제
		 *  
		 *  무통장 입금이면 계좌번호 안내창으로, 카드결제이면 카드결체창으로 이동
		 */
		
		List<ProductVO> detail = (List<ProductVO>) req.getSession().getAttribute("detail");
		UserVO user = (UserVO) req.getSession().getAttribute("loginUser");
		String userId = user.getUserId();
		OrderVO order = new OrderVO();
		PaymentService service = new PaymentServiceMybatis();
		
		int usedPoint = Integer.parseInt(req.getParameter("usedPoint"));
		String method = req.getParameter("paymethod");
		String addr = req.getParameter("sample6_address")+" "+(req.getParameter("sample6_detailAddress"));
		int orderTotal = Integer.parseInt(req.getParameter("orderTotal"));
		int usedCp = 0;
		if(!req.getParameter("type").equals("none")) {
			usedCp = Integer.parseInt(req.getParameter("type"));
			order.setCpId(usedCp);
			
			// 쿠폰 상태 사용불가로 업데이트
			service.useCoupon(usedCp);
			System.out.println("========쿠폰까지 완료=======");
		}
		order.setUserId(userId);
		order.setDeliReceiver(req.getParameter("reciver"));
		order.setDeliAddr(addr);
		order.setDeliPhone(req.getParameter("orderphone"));
		order.setOrderMethod(method);
		order.setOrderTotal(orderTotal);
		order.setRealTotal(Integer.parseInt(req.getParameter("realTotal")));
		order.setUesdPoint(usedPoint);
		if(method.equals("cash")) {
			order.setOrderStatus("결제대기");
		}else if(method.equals("card")) {
			order.setOrderStatus("결제완료");
		}
		
		// 주문정보 생성
		System.out.println("order : " + order);
		service.order(order);
		
		// 상세물품 기입 & 카트에서 삭제
		int orderId = service.getOrderNum();
		System.out.println("orderId : " + orderId);
		req.setAttribute("orderId", orderId);
		
		CartVO cart = new CartVO();
		PaydetailVO prod = new PaydetailVO();
		cart.setUserId(userId);
		prod.setOrderId(orderId);
		for(int i=0; i<detail.size(); i++) {
			prod.setPdId(detail.get(i).getPdId());
			prod.setPdCount(detail.get(i).getPdCount());
			service.addDetail(prod);
			
			cart.setPdId(detail.get(i).getPdId());
			service.autoDelCart(cart);			
		}
		System.out.println("장바구니 추가삭제 완료");
		
		// 출발페이 차감
		StartpayVO oldpay = service.myPointNow(userId);
		StartpayVO newpay = new StartpayVO();
		newpay.setUserId(userId);
		
		if(usedPoint > 0) {			
		int mypoint = oldpay.getPayPoint();
		int mypay = oldpay.getPayStart();
		
			if(usedPoint<=mypoint) {
				newpay.setPayStart(0);
				newpay.setPayPoint(-usedPoint);
			}else{
				newpay.setPayStart(-(usedPoint-mypoint));
				newpay.setPayPoint(-mypoint);			
			}
				newpay.setPayWhy("["+orderId+"]"+" 구매사용");
				service.insertPay(newpay);
		}
		
		System.out.println("포인트 사용 완료");
		
		// 포인트 적립
		newpay.setPayStart(0);
		newpay.setPayWhy("["+orderId+"]"+" 구매적립");
		
		String grade = user.getUserGrade();
		double rate = 0;
		if(grade.equals("normal")) {
			rate = 0.01;
		}else if(grade.equals("silver")){
			rate = 0.05;
		}else if(grade.equals("gold")) {
			rate = 0.1;
		}else {
			rate = 0.2;
		}
		
		int save = (int)(orderTotal * rate);
		newpay.setPayPoint(save);
		service.insertPay(newpay);
		
		System.out.println("포인트 적립 완료");
		
		// 주소 저장
		String isSave = req.getParameter("saveAddr");
		if(isSave.equals("yes")) {
			user.setUserAddr(addr);
			user.setUserPhone(req.getParameter("orderphone"));
			UserService us = new UserServiceMybatis();
			us.modifyAddr(user);
			System.out.println("주소 수정 완료");
		}
		
		//결제페이지로 이동
		
		if(method.equals("cash")) {
			return "pay/payByCash.tiles";
		}else{
			return "pay/payByCard.tiles";
		}
	}

}
