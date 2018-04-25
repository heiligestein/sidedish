package com.mypage.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.common.Constants;
import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AnswerInsertSaveAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
String url = "boardlist.sidedish";
		
		
		//파일 업로드 처리
		File uploadDir = new File(Constants.UPLOAD_PATH);
		
		//파일을 저장할 디렉토리가 존재하지 않다면 디렉토리 생성
		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}
		
		//form 태그 안에 있는 input값의 Name 속성으로 가져옴.
		//request를 확장시킨 MultipartRequest 생성
		// new MultipartRequest(request,파일업로드 디렉토리,업로드용량,인코딩,파일이름중복정책)
		MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD,"UTF-8",new DefaultFileRenamePolicy());
		Integer bno = Integer.parseInt(multi.getParameter("bno"));
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		String password = multi.getParameter("password");
		String filename = " "; // 공백
		int filesize = 0;
		System.out.println(title+","+writer+","+password+","+bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bbDto = bDao.boardDetailView(bno); // 상위 상세게시글의 내용
		
		int ref = bbDto.getRef();				//기존 게시글 ref
		int re_step = bbDto.getRe_step()+1; 		//기존 게시글의 re_step +1
		int re_level = bbDto.getRe_level()+1;	//기존 답변단계 re_level+1
		
		
		try {
			//첨부 파일의 집합(배열로 가져옴)
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				//첨부파일의 이름
				String file1= (String)files.nextElement();
				filename = multi.getFilesystemName(file1);
				File f1 = multi.getFile(file1);
				if (f1 != null) {
					filesize = (int)f1.length(); //파일 사이즈 저장
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// filename이 null 또는 ""일 때 "-" 처리
		if (filename == null || filename.trim().equals("")) {
			filename = "-";
		}
		// 다블 순서 조정 (re_step)
		bDao.updateStep(ref,re_step);
		//DTO로 담아서 넘기지 않고  DAO에서 담는 방법
		BoardDTO bDto = new BoardDTO(title, content, writer, password, filename, filesize,ref,re_step,re_level);
		int result = bDao.answerInsert(bDto);
		
		if (result > 0) {
			System.out.println("게시글 등록 성공");
		}else {
			System.out.println("게시글 등록 실패");
		}
		
		//게시글을 실제로 등록 후 게시글 목록 페이지로 이동
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}
}