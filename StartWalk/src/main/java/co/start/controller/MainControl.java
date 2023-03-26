package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.CommentsService;
import co.start.service.CommentsServiceMybatis;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.service.UserService;
import co.start.service.UserServiceMybatis;
import co.start.vo.CommentsVO;
import co.start.vo.PdreviewVO;
import co.start.vo.ProductVO;
import co.start.vo.UserVO;

public class MainControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService service = new ProductServiceMybatis();
		
		CommentsService serviceCo = new CommentsServiceMybatis();
		
		UserService serviceUser = new UserServiceMybatis();
		
		UserVO mainCountUser = serviceUser.mainCountUser();
		System.out.println("mainCountUser: " + mainCountUser);
		request.setAttribute("mainCountUser", mainCountUser);
		
		ProductVO mainCountPackage = service.mainCountPackage();
		System.out.println("mainCountPackage: " + mainCountPackage);
		request.setAttribute("mainCountPackage", mainCountPackage);
		
		ProductVO mainCountProduct = service.mainCountProduct();
		System.out.println("mainCountProduct: " + mainCountProduct);
		request.setAttribute("mainCountProduct", mainCountProduct);
				
		List<PdreviewVO> mainReviewList = service.mainReviewList();
		System.out.println("mainReviewList: " + mainReviewList);
		request.setAttribute("mainReviewList", mainReviewList);
		
		
		List<CommentsVO> mainCommentsList = serviceCo.mainommentsList();
		System.out.println("mainCommentsList: " + mainCommentsList);
		request.setAttribute("mainCommentsList", mainCommentsList);
		
		
		List<ProductVO> bestPackage = service.mainPackageList();
		System.out.println("bestPackage" + bestPackage);
		request.setAttribute("bestPackage", bestPackage);
		
		
		List<ProductVO> bestHotel = service.mainHotelList();
		System.out.println("bestHotel" + bestHotel);
		request.setAttribute("bestHotel", bestHotel);
		
		
		List<ProductVO> bestProduct = service.mainProductList();
		System.out.println("bestProduct" + bestProduct);
		request.setAttribute("bestProduct", bestProduct);
		
		return "main/main.tiles";
	}

}
