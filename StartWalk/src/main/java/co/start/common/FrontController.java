package co.start.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import co.start.common.Control;
import co.start.controller.CartControl;
import co.start.controller.HotelListControl;
import co.start.controller.AddUserControl;
import co.start.controller.AddUserFormControl;
import co.start.controller.LoginControl;
import co.start.controller.LoginFormControl;
import co.start.controller.MainControl;
import co.start.controller.OrderControl;
import co.start.controller.OrderFormControl;
import co.start.controller.PackageInfoControl;
import co.start.controller.PackageListControl;
import co.start.controller.TravelBoardControl;
import co.start.controller.TravelBoardListControl;
import co.start.controller.TravelBoardWriteControl;
import co.start.controller.mateListControl;
import co.start.controller.ProductInfoControl;
import co.start.controller.ProductListControl;
import co.start.controller.ScManagerListControl;


public class FrontController extends HttpServlet {
	private Map<String, Control> map;
	public FrontController() {
		map = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainControl());
		// 가애
		map.put("/orderForm.do", new OrderFormControl()); // 결제요청 페이지

		map.put("/order.do", new OrderControl()); // 결제 처리 페이지
		map.put("/cart.do", new CartControl()); // 장바구니

		map.put("/travelBoardList.do", new TravelBoardListControl()); // 여행 후기 게시판 목록
		map.put("/travelBoard.do", new TravelBoardControl()); // 여행 후기 게시판 글읽기
		map.put("/travelBoardWrite", new TravelBoardWriteControl()); // 여행 후기 게시판 글쓰기

		
		// 순덕
		// 지역별 여행 패키지 목록
		map.put("/packageList.do", new PackageListControl());
		// 여행 패키지 상세
		map.put("/packageInfo.do", new PackageInfoControl());
		
		// 용억

		  // 상품리스트
				map.put("/productList.do", new ProductListControl());
				map.put("/hotelList.do", new HotelListControl()); 
		  // 상품 상세
				map.put("/productInfo.do", new ProductInfoControl());
	      // 매칭 게시판 목록
				map.put("/mate.do", new mateListControl());
		
		// 대준
		// 로그인
		map.put("/loginForm.do", new LoginFormControl()); // 로그인 회원가입 창.
		map.put("/login.do", new LoginControl()); // 로그인 처리 페이지.
		// 회원가입
		map.put("/addUserForm.do", new AddUserFormControl()); // 회원가입 처리 페이지.
		map.put("/addUser.do", new AddUserControl()); // 회원가입 처리.
		
		// 관리자 sc(1:1문의)
		map.put("/scManagerList", new ScManagerListControl()); // 목록 관리자용(전체리스트).
		//map.put("/scSearch", new ScSearchControl()); // 글 읽기(단건조회).
		//map.put("/scWrite", new ScWriteControl()); // 1:1문의 글쓰기(등록).
		//map.put("/scModify.do", new ScModifyControl()); // 글수정.
		//map.put("/scRemove.do", new ScRemoveControl()); // 글삭제.
		
		// 회원 sc(1:1문의)
		//map.put("/scUser", new ScUserListControl()); // 목록 회원용(전체리스트-아이디 조건).
		
		
		// 쪽지 dm (sender)
		//map.put("/senderList", new SenderListControl()); // 목록 관리자용(전체리스트).
		//map.put("/senderSearch", new SenderSearchControl()); // 쪽지 읽기(단건조회).
		//map.put("/senderWrite", new SenderWriteControl()); // 관리자 쪽지 보내기(등록).
		//map.put("/senderModify.do", new SenderModifyControl()); // 수정.
		//map.put("/senderRemove.do", new SenderRemoveControl()); // 삭제.
		
		// 쪽지 dm (receiver)
		//map.put("/receiverList", new ReceiverListControl()); // 목록 회원용(전체리스트).
		//map.put("/receiverWrite", new ReceiverWriteControl()); // 회원 쪽지 보내기(등록).
		
		// 상품등록 (관리자)
		//map.put("/productAdd", new productAddControl()); // 상품등록(등록).
		
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		System.out.println("do page : "+page);
		
		Control command = map.get(page);
		String viewPage = command.exec(req, resp); // product/productlist.tiles가 넘어옴
		
		if(viewPage.endsWith(".jsp")) {
			viewPage = "/WEB-INF/views/" + viewPage;
//		}else if(viewPage.endsWith(".tiles")) {	
		} else if(viewPage.endsWith(".ajax")) {
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().append(viewPage.substring(0, viewPage.length()-5));
			return;
		} else if(viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);
			return;
		}
		
		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	
	}
}
