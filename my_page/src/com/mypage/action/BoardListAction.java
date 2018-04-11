package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;


public class BoardListAction implements Action {
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsmain.jsp";
		
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = bDao.listAll();
		
		request.setAttribute("boardlist", boardlist);
		
		System.out.println("게시글 출력 페이지");
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
