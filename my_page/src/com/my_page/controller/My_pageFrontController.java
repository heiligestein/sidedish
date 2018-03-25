package com.my_page.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my_page.action.Action;
import com.my_page.action.ActionForward;
import com.my_page.action.IndexAction;

/**
 * Servlet implementation class My_pageFrontController
 */
@WebServlet("/My_pageFrontController")
public class My_pageFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public My_pageFrontController() {
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
		String command = uri.substring(ctx.length());
		
		System.out.println("uri ======> " + uri);
		System.out.println("ctx ======> " + ctx);
		System.out.println("command ======> " + command);
	
		// ======= 액션 매핑 ======= //
		// 실제로 동작하는 곳, 하나의 Servlet에서 URL을 읽어 해당 기능을 구현
		if (command.equals("/index.sidedish")) {
			System.out.println("서블릿 탔음");
			action = new IndexAction();
			forward = action.excute(request, response);
			
		}else if (command.equals("/login.sidedish")) {
			System.out.println("서블릿 탔음");
		}
		else if (command.equals("/member.sidedish")) {
			System.out.println("서블릿 탔음");
		}
		
		// ======= 공통분기 작업 ====== //
		if (forward != null) {
				response.sendRedirect(forward.getPath());
		}else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
		}
			
			
			
	
	
	
	}
}