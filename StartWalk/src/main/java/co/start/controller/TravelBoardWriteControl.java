package co.start.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class TravelBoardWriteControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String dir = req.getServletContext().getRealPath("upload");
		System.out.println("dir : "+dir);
		int maxSize = 5 * 1024 * 1204; //5MB (Byte기준 : *1024 -> KB *1024 -> MB)
		String enc = "UTF-8";
		
		MultipartRequest multi=null;
		try {
			multi = new MultipartRequest(req, dir, maxSize, enc, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//사용자 입력값 처리
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String subject = multi.getParameter("subject");
		String attach = multi.getFilesystemName("attach"); // 업로드 할 때의 파일이름이 아니라 업로드 하면서 리네임된 파일명을 담아둬야함
		
		
		
			
		BoardVO vo = new BoardVO();
		vo.setBTitle(title);
		vo.setUserId(writer);
		vo.setBContents(subject);
		vo.setBFile(attach);
			
		BoardService service = new BoardServiceMybatis();
		if (service.travelBoardWrite(vo)) {
			
			Enumeration<?> enumer = multi.getFileNames();
			while(enumer.hasMoreElements()) {
				String fineName = (String) enumer.nextElement();
				
			}
			// 정상 처리된 경우 - 목록이동
			return "travelBoardList.do";
		}else {
			return "board/travelWrite.tiles";
		}		
	}

}
