package com.my_page.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

public class LogoutAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.sidedish";
		int flag = 0;
		// true면 새로운 세션 생성
		// false면 null값 호출
		HttpSession session = request.getSession(false);

		if (session != null) {
			session.invalidate();
			flag = 1;
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("flag", flag);

		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);
		/*ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);*/

		//return forward;
		return null;
	}
}
