package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;

public class BoardUpdateSaveAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		
		Integer bno =  Integer.parseInt(request.getParameter("bno"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		System.out.println(bno+","+title+","+content);
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.BoardUpdate(title, content, bno);
		
		if (result > 0) {
			System.out.println("수정 성공");
			url = "boardlist.sidedish";
		} else {
			System.out.println("수정 실패");
			url = "index.sidedish";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
