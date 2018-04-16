package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;
import com.mypage.dao.ReplyDAO;
import com.mypage.dto.BoardDTO;
import com.mypage.dto.ReplyDTO;

public class BoardDetailAction implements Action{
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsdetail.jsp"; //게시글 상세페이지 출력
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		//oracle/DTO에선 숫자이기에 myBatis는 int를 받지 못하고 Integer로 받아야한다.
		System.out.println("게시글 번호는 "+bno);
		BoardDAO bDao = BoardDAO.getInstance();
		
		//조회수 1 증가
		bDao.boardViewCnt(bno);
		
		
		//상세게시 글 출력
		BoardDTO bDto = bDao.boardDetailView(bno);
		request.setAttribute("boardview", bDto);

		//상세게시글 댓글 출력
		ReplyDAO rDao = ReplyDAO.getInstance();
		List<ReplyDTO> list = rDao.replySelect(bno);
		request.setAttribute("replyview", list);
		System.out.println(list.size());
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
}
