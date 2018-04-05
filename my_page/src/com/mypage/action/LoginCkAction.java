package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mypage.dao.MemberDAO;
import com.mypage.dao.ProductDAO;
import com.mypage.dto.MemberDTO;

public class LoginCkAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			HttpSession session = request.getSession();
			
			String mid = request.getParameter("id");
			String mpw = request.getParameter("pw");
			System.out.println(mid+","+mpw);
			
			if (mid != null && mpw != null) {
				if(mid.trim().equals("")== false && mpw.trim().equals("")== false) {
					MemberDAO mDao = MemberDAO.getInstance();
					int flag = mDao.memLogin(mid,mpw);
					System.out.println("flag = "+flag);
					
					if (flag == 0) {
						System.out.println("로그인 실패");
						JSONObject jObj = new JSONObject();
						jObj.put("flag", flag);
						jObj.put("id", mid);
						jObj.put("pw", mpw);
						
						response.setContentType("application/x-json; charset=UTF-8");
						response.getWriter().println(jObj);
						

					}else if (flag == 1) {
						MemberDTO mDto = mDao.sessionLogin(mid, mpw);
						System.out.println(mDto.getMname()+","+mDto.getMbirth());
						System.out.println("로그인 성공했습니다.");
						if (mDto != null) {
							session.removeAttribute("loginUser");
							session.setAttribute("loginUser", mDto);
						}
						// 여러건도 보낼수 있음	
						JSONObject jObj = new JSONObject();
						jObj.put("flag", flag);
						jObj.put("id", mid);
						jObj.put("pw", mpw);

						response.setContentType("application/x-json; charset=UTF-8");
						response.getWriter().println(jObj);
					}
					
					
				}
			}
			return null;
	}
}