package com.my_page.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my_page.dao.MemberDAO;

public class LoginCkAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String url = "index.sidedish";
			
			String mid = request.getParameter("get_id");
			String mpw = request.getParameter("get_pw");
			System.out.println(mid+","+mpw);
			MemberDAO mDao = new MemberDAO();
			int flag = mDao.memLogin(mid,mpw);
			
			if (flag == 0) {
				//로그인 실패
				url = "login.sidedish";
				request.setAttribute("flag", flag);
			} else if (flag == 1) {
				//session 값 추가
				url = "index.sidedish";
			}
			
			ActionForward forward = new ActionForward();
			forward.setPath(url);
			forward.setRedirect(false);
			
			return forward;	
	
	}
}
