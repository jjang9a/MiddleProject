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

import co.start.controller.AddProductControl;
import co.start.controller.AddProductFormControl;
import co.start.controller.AddReviewControl;
import co.start.controller.AddReviewFormControl;
import co.start.controller.AddUserControl;
import co.start.controller.AddUserFormControl;
import co.start.controller.CartAddAjax;
import co.start.controller.CartControl;
import co.start.controller.CartDeleteAjax;
import co.start.controller.CartUpdateAjax;
import co.start.controller.CommentsAddAjax;
import co.start.controller.CommentsListAjax;
import co.start.controller.CommentsRemoveAjax;
import co.start.controller.CouponListControl;
import co.start.controller.FAQControl;
import co.start.controller.HotelInfoControl;
import co.start.controller.HotelListControl;
import co.start.controller.LoginControl;
import co.start.controller.LoginFormControl;
import co.start.controller.LogoutControl;
import co.start.controller.MainControl;
import co.start.controller.MateAddControl;
import co.start.controller.MateAddForm;
import co.start.controller.MateInfoControl;
import co.start.controller.MateListControl;
import co.start.controller.MateModifyConrol;
import co.start.controller.MateModifyFormControl;
import co.start.controller.NoticeAddControl;
import co.start.controller.NoticeAddFormControl;
import co.start.controller.NoticeDeleteControl;
import co.start.controller.NoticeInfoControl;
import co.start.controller.NoticeListControl;
import co.start.controller.NoticeModifyControl;
import co.start.controller.NoticeModifyFormControl;
import co.start.controller.OrderControl;
import co.start.controller.OrderFormControl;
import co.start.controller.OrderListNoControl;
import co.start.controller.PackageAddControl;
import co.start.controller.PackageAddFormControl;
import co.start.controller.PackageDeleteControl;
import co.start.controller.PackageInfoControl;
import co.start.controller.PackageListControl;
import co.start.controller.PackageModifyControl;
import co.start.controller.PackageModifyFormControl;
import co.start.controller.ProductInfoControl;
import co.start.controller.ProductListControl;
import co.start.controller.ScManagerListControl;
import co.start.controller.ScRemoveControl;
import co.start.controller.ScSearchControl;
import co.start.controller.StartpayAddControl;
import co.start.controller.StartpayAddFormControl;
import co.start.controller.StartpayInsertControl;
import co.start.controller.ScUserListControl;
import co.start.controller.ScUserWriteControl;
import co.start.controller.ScUserWriteFormControl;
import co.start.controller.ScWriteControl;
import co.start.controller.ScWriteFormControl;
import co.start.controller.SenderListControl;
import co.start.controller.SenderSearchControl;
import co.start.controller.TravelBoardControl;
import co.start.controller.TravelBoardListControl;
import co.start.controller.TravelBoardWriteControl;
import co.start.controller.TravelBoardWriteFormControl;
import co.start.controller.UserUpdateCheckControl;
import co.start.controller.UserUpdateControl;
import co.start.controller.UserUpdateFormControl;
import co.start.controller.orderListControl;
import co.start.controller.NoticeListControl;
import co.start.controller.LogoutControl;
import co.start.controller.StartpayListControl;
import co.start.controller.NoticeListControl;
import co.start.controller.LogoutControl;

public class FrontController extends HttpServlet {

	public static String enc = null;
	private Map<String, Control> map;

	public FrontController() {
		map = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		enc = config.getInitParameter("encoding");
		map.put("/main.do", new MainControl());
		// 가애
		map.put("/orderForm.do", new OrderFormControl()); // 결제요청 페이지

		map.put("/order.do", new OrderControl()); // 결제 처리 페이지
		map.put("/cart.do", new CartControl()); // 장바구니
		map.put("/cartUpdate.do", new CartUpdateAjax()); // 장바구니 물건 수량 변경
		map.put("/cartDelete.do", new CartDeleteAjax()); // 장바구니 물건 삭제
		map.put("/cartAdd.do", new CartAddAjax()); // 장바구니에 물건 추가

		map.put("/travelBoardList.do", new TravelBoardListControl()); // 여행 후기 게시판 목록
		map.put("/travelBoard.do", new TravelBoardControl()); // 여행 후기 게시판 글읽기
		map.put("/travelBoardWriteForm.do", new TravelBoardWriteFormControl()); // 여행 후기 게시판 글쓰기
		map.put("/travelBoardWrite.do", new TravelBoardWriteControl()); // 여행 후기 게시판 글쓰기 처리

		map.put("/userUpdateCheck.do", new UserUpdateCheckControl()); // 회원정보 수정 진입 비밀번호
		map.put("/userUpdateForm.do", new UserUpdateFormControl()); // 회원 정보 수정
		map.put("/userUpdate.do", new UserUpdateControl()); // 회원정보 수정 처리

		map.put("/hotelInfo.do", new HotelInfoControl()); // 숙소정보 상세조회

		map.put("/logout.do", new LogoutControl()); // 로그아웃 처리
		map.put("/faq.do", new FAQControl()); // 자주묻는 질문 페이지
		map.put("/addProductForm.do", new AddProductFormControl()); // 판매상품 추가 페이지
		map.put("/addProduct.do", new AddProductControl()); // 판매상품 추가 처리

		// 순덕
		// 지역별 여행 패키지 목록
		map.put("/packageList.do", new PackageListControl());

		// 여행 패키지 상세
		map.put("/packageInfo.do", new PackageInfoControl());
		// 여행 패키지 글쓰기 폼
		map.put("/packageAddForm.do", new PackageAddFormControl());
		// 여행 패키지 글쓰기 처리
		map.put("/packageAdd.do", new PackageAddControl());
		// 여행 패키지 글 수정 화면
		map.put("/packageModifyForm.do", new PackageModifyFormControl());
		// 야행패키지 글 수정 처리
		map.put("/packageModify.do", new PackageModifyControl());
		// 여행 패키지 글 삭제
		map.put("/packageDelete.do", new PackageDeleteControl());

		// 공지사항 목록
		map.put("/noticeList.do", new NoticeListControl());
		// 공지사항 상세
		map.put("/noticeInfo.do", new NoticeInfoControl());
		// 공지사항 글쓰기 폼
		map.put("/noticeAddForm.do", new NoticeAddFormControl());
		// 공지사항 글쓰기 등록
		map.put("/noticeAdd.do", new NoticeAddControl() );	
		// 공지사항 글 수정 폼 (화면)
		map.put("/noticeModifyForm.do", new NoticeModifyFormControl());
		// 공지사항 글 수정
		map.put("/noticeModify.do", new NoticeModifyControl());
		// 공지사항 글 삭제
		map.put("/noticeDelete.do", new NoticeDeleteControl());

		// 구매목록
		map.put("/orderList.do", new orderListControl());
		map.put("/orderListNo.do", new OrderListNoControl());
		
		// 리뷰 작성 화면
		map.put("/addReviewForm.do", new AddReviewFormControl());
		// 리뷰 작성 처리
		map.put("/addReview.do", new AddReviewControl());
		
	

		// 용억

		// 상품리스트
		map.put("/productList.do", new ProductListControl());
		map.put("/hotelList.do", new HotelListControl());
		// 상품 상세
		map.put("/productInfo.do", new ProductInfoControl());
		// 매칭 게시판 목록
		map.put("/mateList.do", new MateListControl());
		// 매칭 게시판 상세
		map.put("/mateInfo.do", new MateInfoControl());
		// 매칭 게시판 등록
		map.put("/mateAdd.do", new MateAddControl());
		// 매칭 게시판 수정 화면
		map.put("/mateModifyForm.do", new MateModifyFormControl());
		// 매칭 게시판 수정
		map.put("/mateModify.do", new MateModifyConrol());
		// 매칭 게시판 등록 화면
		map.put("/mateAddForm.do", new MateAddForm());
		// 매칭 댓글 목록
		map.put("/CommentListAjax.do", new CommentsListAjax());
		// 댓글 등록
		map.put("/commentsAdd.do", new CommentsAddAjax());
		// 댓글 삭제
		map.put("/commentsRemoveAjax.do", new CommentsRemoveAjax()); // 아직 기능 미완
		// 출발페이 목록
		map.put("/payList.do", new StartpayListControl());
		// 출발페이 충천
		map.put("/payAdd.do", new StartpayAddControl());
		// 출발페이 충전화면
		map.put("/payAddForm.do", new StartpayAddFormControl());
		// 쿠폰
		map.put("/couponList.do", new CouponListControl());
		// 매칭 후기 게시판 목록


		// 대준
			// 로그인
			map.put("/loginForm.do", new LoginFormControl()); // 로그인 회원가입 창.
			map.put("/login.do", new LoginControl()); // 로그인 처리 페이지.
			// 회원가입
			map.put("/addUserForm.do", new AddUserFormControl()); // 회원가입 처리 페이지.
			map.put("/addUser.do", new AddUserControl()); // 회원가입 처리.
				
			// 관리자 sc(1:1문의)
			map.put("/scManagerList.do", new ScManagerListControl()); // 목록 관리자용(전체리스트).
			map.put("/scSearch.do", new ScSearchControl()); // 글 읽기(단건조회).			
			map.put("/scWrite.do", new ScWriteControl()); // 1:1문의 글쓰기(등록).
			map.put("/scWriteForm.do", new ScWriteFormControl()); // 1:1문의 글쓰기(등록).
			map.put("/scRemove.do", new ScRemoveControl()); // 글 삭제(글읽기 scSearch에 버튼으로 구현). 
			// 회원 sc(1:1문의)
			map.put("/scUserList.do", new ScUserListControl()); // 목록 회원용(전체리스트-아이디 조건) 미완-list 조건 줘야함.
			map.put("/scUserWrite.do", new ScUserWriteControl()); // 1:1문의 글쓰기(등록).
			map.put("/scUserWriteForm.do", new ScUserWriteFormControl()); // 1:1문의 글쓰기(등록).		
		

			// 쪽지 dm (sender)
			map.put("/senderList.do", new SenderListControl()); // 보낸쪽지함 목록(전체리스트).
			map.put("/senderSearch.do", new SenderSearchControl()); // 쪽지 상세조회. 
		
				
		

	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(enc);
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		System.out.println("do page : " + page);

		Control command = map.get(page);
		String viewPage = command.exec(req, resp); // product/productlist.tiles가 넘어옴

		if (viewPage.endsWith(".jsp")) {
			viewPage = "/WEB-INF/views/" + viewPage;
//		}else if(viewPage.endsWith(".tiles")) {	

		} else if (viewPage.endsWith(".ajax")) {
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().append(viewPage.substring(0, viewPage.length() - 5));
			return;

		} else if (viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);
			return;

		}
		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);

	}
}
