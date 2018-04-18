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

public class BoardSearchAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsmain.jsp";
		
		
		String radio = request.getParameter("howToSearch");
		/*if (radio.equals("all")) {
			System.out.println("전체 검색 시작");
		}else if (radio.equals("title")) {
			System.out.println("제목으로 검색 시작");
		}else if (radio.equals("content")) {
			System.out.println("내용으로 검색 시작");
		}else if (radio.equals("name")) {
			System.out.println("작성자로 검색 시작");
		}*/
		
		
		// criDto 계산하기
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호: " + page);
		criDto.setPage(page);
		
		// 검색된 게시판 리스트 출력
		criDto.setRadio(radio); //검색조건 입력
		BoardDAO bDao = BoardDAO.getInstance();
		String keyword = request.getParameter("searchText");
		System.out.println("검색 키워드="+keyword);

		criDto.setKeyword(keyword);// criDto에 keyword값 추가
		
		List<BoardDTO> boardlist = bDao.boardSearch(criDto);
		
		request.setAttribute("boardlist", boardlist);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int result = bDao.totalCount();
		pageMaker.setTotalCount(result);
		
		request.setAttribute("pageMaker", pageMaker);
		
		request.setAttribute("keyword", keyword); // 키워드
			
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}