package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;
import com.mypage.dao.ReplyDAO;

public class BoardDeleteAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		
		Integer bno =  Integer.parseInt(request.getParameter("bno"));
		BoardDAO bDao = BoardDAO.getInstance();
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = bDao.BoardDelete(bno);		 //게시글 삭제
		rDao.casecadeReplyDel(bno); //게시글 삭제시 댓글 연쇄안되기
		
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