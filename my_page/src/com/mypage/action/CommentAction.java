package com.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.mypage.dao.ReplyDAO;
import com.mypage.dto.ReplyDTO;

public class CommentAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		
		String writer = request.getParameter("comment_writer");
		String content = request.getParameter("comment_content");
		Integer bno = Integer.parseInt(request.getParameter("comment_bno"));
		
		System.out.println(writer+","+content+"글번호"+bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		int result = rDao.replyInsert(rDto);
		if (result > 0 ) {
			// 댓글 입력 성공
			url = "boarddetail.sidedish?bno="+bno;
		}else {
			// 댓글 입력 실패
			url = "boardlist.sidedish";
		}
		JSONObject jObj = new JSONObject();
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return null;
	}

}