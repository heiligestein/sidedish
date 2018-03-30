package com.my_page.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.my_page.dao.MemberDAO;
import com.my_page.dto.MemberDTO;

public class SessionAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = "index.sidedish";
		
		
		String mid = request.getParameter("get_id");
		String mpw = request.getParameter("get_pw");
		System.out.println(mid+","+mpw);
		
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = mDao.sessionLogin(mid, mpw);
		System.out.println("로그인 성공했습니다.");		
		System.out.println(mDto.getMid()+","+mDto.getMname());
		
		if(mDto != null) {
			session.removeAttribute("loginUser"); // 세션 초기화 (혹시 남아있을 값 제거)
			session.setAttribute("loginUser", mDto);//세션에 값 담기
			
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
