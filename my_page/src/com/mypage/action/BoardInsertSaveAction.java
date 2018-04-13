package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;

public class BoardInsertSaveAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardlist.sidedish";
		
		
		//form 태그 안에 있는 input값의 Name 속성으로 가져옴.
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		String password = request.getParameter("password");

		System.out.println(title+","+writer+","+password);
		//DTO로 담아서 넘기지 않고  DAO에서 담는 방법
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.boardInsert(title, content, writer ,password);
		
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
