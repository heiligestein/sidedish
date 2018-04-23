package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.mypage.dao.BoardDAO;
import com.mypage.dto.BoardDTO;

public class GoodUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/bbsdetail.jsp";
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println(bno);
		BoardDAO bDao = BoardDAO.getInstance();
		
		//좋아요 1증가
		bDao.BoardGoodCnt(bno);
		
				
		JSONObject jObj = new JSONObject();
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);
		
		return null;
	}

}