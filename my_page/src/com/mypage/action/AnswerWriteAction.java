package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;

public class AnswerWriteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsanswer.jsp";
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO boardview = bDao.boardDetailView(bno);
		
		// 게시글 답변 양식
		boardview.setContent("======게시물의  내용======\n"+boardview.getContent()+"\n==========================\n");
		request.setAttribute("boardview", boardview);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);

		return forward;
	}
}
