package com.my_page.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.my_page.dao.MemberDAO;
import com.my_page.dto.MemberDTO;

public class LoginCkAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			String mid = request.getParameter("id");
			String mpw = request.getParameter("pw");
			System.out.println(mid+","+mpw);
			
			if (mid != null && mpw != null) {
				if(mid.trim().equals("")== false && mpw.trim().equals("")== false) {
					MemberDAO mDao = new MemberDAO();
					int flag = mDao.memLogin(mid,mpw);
					System.out.println("flag : "+flag);
					
					// 여러건도 보낼수 있음	
					JSONObject jObj = new JSONObject();
					jObj.put("flag", flag);
					jObj.put("id", mid);
					jObj.put("pw", mpw);
					
					response.setContentType("aaplication/x-json; charset=UTF-8");
					response.getWriter().println(jObj);
					
				}
			}
			return null;
	}
}