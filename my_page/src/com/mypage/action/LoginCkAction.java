package com.mypage.action;

import java.io.IOException;
import java.util.List;

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
					MemberDTO mDto = new MemberDTO(mid, mpw);
					List<MemberDTO> list = mDao.memLogin(mDto);
					int flag = 0;
					if (list.size() != 0) {
						flag = 1;
					}else {
						flag = 0;
					}
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
						
						mDto = mDao.sessionLogin(mDto);
						for (MemberDTO memberDTO : list) {
							System.out.println("-------------------");
							System.out.println(list.get(0).getMname());
							System.out.println(list.get(0).getMid());
							System.out.println(list.get(0).getMpw());
						}
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