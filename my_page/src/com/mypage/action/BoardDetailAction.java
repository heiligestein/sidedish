package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;

public class BoardDetailAction implements Action{
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsdetail.jsp"; //게시글 상세페이지 출력
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		//oracle/DTO에선 숫자이기에 myBatis는 int를 받지 못하고 Integer로 받아야한다.
		System.out.println("게시글 번호는 "+bno);
		BoardDAO bDao = BoardDAO.getInstance();
		
		//세션을 활용한 조회수 증가 방지
		HttpSession session = request.getSession(); 
		//조회수 1 증가
		bDao.boardViewCnt(bno,session);
		
		//상세게시 글 출력
		BoardDTO bDto = bDao.boardDetailView(bno);
		request.setAttribute("boardview", bDto);

		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
}
