package com.my_page.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my_page.dao.MemberDAO;
import com.my_page.dto.MemberDTO;

public class MemberInsertAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		
		String mid = request.getParameter("get_id");
		String mpw = request.getParameter("get_pw");
		String mname = request.getParameter("get_name");
		String mphone = request.getParameter("get_phone");
		String msex = request.getParameter("get_sex");

		String email = request.getParameter("email");
		String email_adress = request.getParameter("email_adress");
		String memail = email+"@"+email_adress;
		
		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthday = request.getParameter("birthday");
		String mbirth = birthyear+birthmonth+birthday;
		
		System.out.println(mid+","+mpw+","+mname+","+msex+","+mphone+","+memail+","+mbirth);
		
		MemberDTO mDto = new MemberDTO(mid, mpw, mname, mphone, memail, msex);
		MemberDAO mDao = new MemberDAO();
		int result = mDao.memInsert(mDto);
		
		if (result >0) {
			//회원 등록 성공
			url = "index.sidedish";
		}else {
			url = "member.sidedish";
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
