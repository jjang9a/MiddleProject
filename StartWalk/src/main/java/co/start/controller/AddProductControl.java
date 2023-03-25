package co.start.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ImagesVO;
import co.start.vo.ProductVO;

public class AddProductControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String dir = req.getServletContext().getRealPath("upload");
		System.out.println("dir : "+dir);
		int maxSize = 5 * 1024 * 1204; //5MB (Byte기준 : *1024 -> KB *1024 -> MB)
		String enc = "UTF-8";
	
		try {
			MultipartRequest multi = new MultipartRequest(req, dir, maxSize, enc, new DefaultFileRenamePolicy());
			
			ProductVO prod = new ProductVO();
			prod.setPdType(multi.getParameter("type"));
			prod.setPdName(multi.getParameter("name"));
			prod.setPdInfo(multi.getParameter("body"));
			int price = Integer.parseInt(multi.getParameter("price"));
			prod.setPdPrice(price);
			String image = multi.getFilesystemName("img1");
			if(image != null) {
				prod.setPrImg(image);
			}
			System.out.println(prod);
			
			ProductService service = new ProductServiceMybatis();
			
			service.addProd(prod);
			
			ImagesVO img = new ImagesVO();
			int pdid = service.searchPdId();
			img.setPdId(pdid);
//			for(int i=1; i<4; i++) {
			image = multi.getFilesystemName("img2");
			if(image != null) {
				img.setImgFile(image);
				System.out.println(img);
				service.imgAttach(img);
			}
			image = multi.getFilesystemName("img3");
			if(image != null) {
				img.setImgFile(image);
				System.out.println(img);
				service.imgAttach(img);
			}
			image = multi.getFilesystemName("img4");
			if(image != null) {
				img.setImgFile(image);
				System.out.println(img);
				service.imgAttach(img);
			}
				
//			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "addProductForm.do";
	}

}
