package co.start.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.ImagesVO;
import co.start.vo.UserVO;

public class TravelBoardWriteControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String dir = req.getServletContext().getRealPath("upload");
		System.out.println("dir : "+dir);
		int maxSize = 5 * 1024 * 1204; //5MB (Byte기준 : *1024 -> KB *1024 -> MB)
		String enc = "UTF-8";
	
		try {
			MultipartRequest multi = new MultipartRequest(req, dir, maxSize, enc, new DefaultFileRenamePolicy());
			
			UserVO user = (UserVO)req.getSession().getAttribute("loginUser");

			BoardVO vo = new BoardVO();
			vo.setBTitle(multi.getParameter("title"));
			vo.setUserId(user.getUserId());
			vo.setBContents(multi.getParameter("body"));
			if(multi.getParameter("head").equals("pk")) {
				vo.setBHead("[패키지여행]");
			}else if(multi.getParameter("head").equals("free")) {
				vo.setBHead("[자유여행]");			
			}
			
			System.out.println(vo);
			
			BoardService service = new BoardServiceMybatis();
			service.travelBoardWrite(vo);
			
			ImagesVO img = new ImagesVO();
			int bid = service.searchBId();
			img.setBId(bid);
//			for(int i=1; i<4; i++) {
				String image = multi.getFilesystemName("img1");
				System.out.println("========================================");
				System.out.println(image);
				if(image != null) {
					img.setImgFile(image);
					System.out.println(img);
					service.imgAttach(img);
				}
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
				
//			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}

//		if (service.travelBoardWrite(vo)) {
//			
//			Enumeration<?> enumer = multi.getFileNames();
//			while(enumer.hasMoreElements()) {
//				String fineName = (String) enumer.nextElement();
//			}
//			// 정상 처리된 경우 - 목록이동
//			return "travelBoardList.do";
//		}else {
//			return "board/travelWrite.tiles";
//		}	
		
		return "travelBoardList.do";
	}

}
