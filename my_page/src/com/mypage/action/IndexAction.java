package com.mypage.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mypage.dao.ProductDAO;
import com.mypage.dto.ProductDTO;

public class IndexAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.jsp";
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> bestProductList = pDao.listBestProduct();
		
		List<ProductDTO> newProductList = pDao.listNewProduct();
		
		request.setAttribute("bestProductList", bestProductList);
		request.setAttribute("newProductList", newProductList);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
	
}
