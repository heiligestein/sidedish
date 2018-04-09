package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.mypage.dao.MemberDAO;
import com.mypage.dto.MemberDTO;

public class MemAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.jsp";
		
		String mid =  request.getParameter("id");
		System.out.println("ID :"+mid);
		
		if (mid != null) {
			if(mid.trim().equals("")==false) {
				MemberDAO mDao = MemberDAO.getInstance();
				List<MemberDTO> list = mDao.memIdCheck(mid);
				int flag;
				if (list.size() != 0) {
					//중복 
					flag = 1;
				}else {
					//중복 X
					flag = 0;
				}
				System.out.println("flag = "+flag);
				
				JSONObject jObj = new JSONObject();
				jObj.put("flag", flag);
				jObj.put("id", mid);
				
				response.setContentType("aaplication/x-json; charset=UTF-8");
				response.getWriter().println(jObj);
			}
		}
		
		return null;
	}

}
