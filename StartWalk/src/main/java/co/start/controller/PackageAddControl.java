package co.start.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ImagesVO;
import co.start.vo.ProductVO;

public class PackageAddControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String dir = request.getServletContext().getRealPath("upload");
		System.out.println("dir : "+ dir);
		int maxSize = 5 * 1024 * 1204; //5MB (Byte기준 : *1024 -> KB *1024 -> MB)
		String enc = "UTF-8";
		
		try {
			MultipartRequest multi = new MultipartRequest(request, dir, maxSize, enc, new DefaultFileRenamePolicy());
			
			int price = Integer.parseInt(multi.getParameter("pdPrice"));
			System.out.println("price:  "+ price);
			int sale = Integer.parseInt(multi.getParameter("pdSale"));
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			
			ProductVO vo = new ProductVO();
			vo.setPdName(multi.getParameter("pdName"));
			vo.setPdPrice(price);
			vo.setPdSale(sale);
			vo.setPdInfo(multi.getParameter("pdInfo"));
			vo.setPdLocation(multi.getParameter("pdLocation"));
			
			
			try {
				vo.setPdStart(format.parse(multi.getParameter("pdStart")));
				vo.setPdEnd(format.parse(multi.getParameter("pdEnd")));

			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			
			ProductService service = new ProductServiceMybatis();
			service.addPackage(vo);
			
			ImagesVO img = new ImagesVO();
			int pdId = service.searchPdId();
			System.out.println(pdId);
			
			
			img.setPdId(pdId);
			
			
			System.out.println("vo:  "+vo);
			String image = multi.getFilesystemName("prImg");
			System.out.println("========================================");
			System.out.println(image);
			if(image != null) {
				img.setImgFile(image);
				service.imgAttach(img);
			}
			image = multi.getFilesystemName("img2");
			if(image != null) {
				img.setImgFile(image);
				service.imgAttach(img);
			}
			image = multi.getFilesystemName("img3");
			if(image != null) {
				img.setImgFile(image);
				service.imgAttach(img);
			}
			image = multi.getFilesystemName("img3");
			if(image != null) {
				img.setImgFile(image);
				service.imgAttach(img);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "packageList.do";
		

	}

}
