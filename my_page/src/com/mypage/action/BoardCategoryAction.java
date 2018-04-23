package com.mypage.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;
import com.mypage.dto.CriteriaDTO;
import com.mypage.dto.PageMakerDTO;

public class BoardCategoryAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsmain.jsp";
		
		
		String category = request.getParameter("category");
		if (category.equals("sortcnt")) {
			System.out.println("조회순 정렬");
		}else if (category.equals("sorttitle")) {
			System.out.println("제목순 정렬");
		}else if (category.equals("sortnew")) {
			System.out.println("최신순 정렬");
		}
		
		// criDto 계산하기
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호: " + page);
		criDto.setPage(page);
		
		//게시글 정렬
		criDto.setRadio(category);
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = bDao.boardCategory(criDto);
		
		request.setAttribute("boardlist", boardlist);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int totalcount = bDao.totalCount(criDto); // 게시글 전체 카운트 수
		pageMaker.setTotalCount(totalcount);
		
		request.setAttribute("pageMaker", pageMaker);
		Date today = new Date();
		request.setAttribute("today", today);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}