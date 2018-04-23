package com.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.action.Action;
import com.mypage.action.ActionForward;
import com.mypage.action.BoardCategoryAction;
import com.mypage.action.BoardDeleteAction;
import com.mypage.action.BoardDetailAction;
import com.mypage.action.BoardInsertSaveAction;
import com.mypage.action.BoardInsertViewAction;
import com.mypage.action.BoardListAction;
import com.mypage.action.BoardSearchAction;
import com.mypage.action.BoardUpdateSaveAction;
import com.mypage.action.BoardUpdateViewAction;
import com.mypage.action.CommentAction;
import com.mypage.action.CommentListAction;
import com.mypage.action.ConstractAction;
import com.mypage.action.GoodUpdateAction;
import com.mypage.action.IdOlapCkAction;
import com.mypage.action.IndexAction;
import com.mypage.action.LoginAction;
import com.mypage.action.LoginCkAction;
import com.mypage.action.LogoutAction;
import com.mypage.action.MemAjaxAction;
import com.mypage.action.MemberAction;
import com.mypage.action.MemberInsertAction;
import com.mypage.action.ReplyDeleteAction;
import com.mypage.action.SessionAction;

/**
 * Servlet implementation class My_pageFrontController
 */
@WebServlet("/My_pageFrontController")
public class MypageFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 깨짐 방지
		request.setCharacterEncoding("UTF-8");
		
		//인터페이스
		Action action = null;
		
		//페이지 이동방법 결정(Forward, sendRedirect)
		ActionForward forward = null;
		
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length()); //uri에서 ctx를 빼면 내가 원하는 소스만 출력 가능
		
		System.out.println("uri ====> " + uri);
		System.out.println("ctx ====> " + ctx);
		System.out.println("command ====> " + command);
	
		// ======= 액션 매핑 ======= //
		// 실제로 동작하는 곳, 하나의 Servlet에서 URL을 읽어 해당 기능을 구현
		if (command.equals("/index.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new IndexAction();
			forward = action.excute(request, response);
			
		}else if (command.equals("/login.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new LoginAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/constract.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new ConstractAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/member.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new MemberAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/memberInsert.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new MemberInsertAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/id_olap_ck.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new IdOlapCkAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/memajax.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new MemAjaxAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/loginck.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new LoginCkAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/logout.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new LogoutAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/sessionaction.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new SessionAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boardlist.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardListAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boarddetail.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardDetailAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boardinsertview.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardInsertViewAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boardinsertsave.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardInsertSaveAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boardupdatesave.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardUpdateSaveAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boardupdateview.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardUpdateViewAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boarddelete.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardDeleteAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/comment.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new CommentAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/replydelete.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new ReplyDeleteAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/bbssearch.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardSearchAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/commentlist.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new CommentListAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/goodupdate.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new GoodUpdateAction();
			forward = action.excute(request, response);
		}
		else if (command.equals("/boardcategory.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new BoardCategoryAction();
			forward = action.excute(request, response);
		}
		
		
		// ======= 공통분기 작업 ====== //
		if (forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
			
			
			
	
	
	
	}
}
