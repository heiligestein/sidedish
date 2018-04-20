package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mypage.dao.ReplyDAO;
import com.mypage.dto.ReplyDTO;

public class CommentListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/commentlist.jsp";
		
		
		//상세게시글 댓글 출력
		Integer bno = Integer.parseInt(request.getParameter("bno"));

		ReplyDAO rDao = ReplyDAO.getInstance();
		List<ReplyDTO> list = rDao.replySelect(bno);
		request.setAttribute("replyview", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}