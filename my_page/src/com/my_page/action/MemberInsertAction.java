package com.my_page.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberInsertAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.sidedish";
		
		String id = request.getParameter("get_id");
		String pw = request.getParameter("get_pw");
		String name = request.getParameter("get_name");
		String phone = request.getParameter("get_phone");
		String email = request.getParameter("get_email");
		System.out.println(id+","+pw+","+name+","+phone+","+email);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
