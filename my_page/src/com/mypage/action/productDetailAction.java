package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.ProductDAO;
import com.mypage.dto.ProductDTO;

public class productDetailAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "product/productdetail.jsp";
		String p_code = null;
		ProductDAO pDao = ProductDAO.getInstance();
			p_code = request.getParameter("np_code");
			String flag = request.getParameter("flag");
			if (flag.equals("1")) {
				System.out.println("신상품번호 "+p_code);
				ProductDTO nlist = pDao.selectNewProduct(p_code);
				request.setAttribute("nlist", nlist);
			}else {
				p_code = request.getParameter("bp_code");
				System.out.println("베스트 상품번호"+p_code);
				ProductDTO blist = pDao.selectBestProduct(p_code);
				request.setAttribute("blist", blist);
			}
			
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}