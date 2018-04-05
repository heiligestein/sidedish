package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.MemberDAO;
import com.mypage.dto.MemberDTO;

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
		
		String mpost = request.getParameter("sample4_postcode");
		String sample4_roadAddress = request.getParameter("sample4_roadAddress");
		String sample4_jibunAddress = request.getParameter("sample4_jibunAddress");
		String maddr = sample4_roadAddress+sample4_jibunAddress;
		System.out.println(mid+","+mpw+","+mname+","+msex+","+mphone+","+memail+","+mbirth+","+maddr);
		
		MemberDTO mDto = new MemberDTO(mid, mpw, mname, mphone, mpost, maddr, mbirth, memail, msex);
		MemberDAO mDao = MemberDAO.getInstance();
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
