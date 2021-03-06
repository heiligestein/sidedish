package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.MemberDAO;

public class IdOlapCkAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "id_olap_ck.jsp";
		
		String memberid = request.getParameter("memberid");
		System.out.println("ID = "+ memberid);
		
		MemberDAO mDao = MemberDAO.getInstance();
		/*
		 * 사용 안함
		 * int flag = mDao.memIdCheck(memberid);
		
		// flag 0 이면 중복, flag 1이면 사용 가능
		request.setAttribute("flag", flag);
		System.out.println(flag);*/
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
