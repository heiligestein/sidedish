package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;
import com.mypage.dto.CriteriaDTO;
import com.mypage.dto.PageMakerDTO;


public class BoardListAction implements Action {
	
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsmain.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호: " + page);
		criDto.setPage(page);
		
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = bDao.listAll(criDto);
		
		request.setAttribute("boardlist", boardlist);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int totalcount = bDao.totalCount(); // 게시글 전체 카운트 수
		pageMaker.setTotalCount(totalcount);
		
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println("게시글 출력 페이지");
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
