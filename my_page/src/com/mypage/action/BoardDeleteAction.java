package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;

public class BoardDeleteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		
		Integer bno =  Integer.parseInt(request.getParameter("bno"));
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.BoardDelete(bno);
		
		if (result > 0) {
			System.out.println("삭제 성공");
			url = "boardlist.sidedish";
		}else {
			System.out.println("삭제 실패");
			url = "index.sidedish";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}