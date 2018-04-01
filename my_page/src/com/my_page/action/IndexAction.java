package com.my_page.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my_page.dao.ProductDAO;
import com.my_page.dto.ProductDTO;

public class IndexAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.jsp";
		
		ProductDAO pDao = new ProductDAO();
		ArrayList<ProductDTO> bestProductList = pDao.listBestProduct();
		ArrayList<ProductDTO> newProductList = pDao.listNewProduct();
		
		request.setAttribute("bestProductList", bestProductList);
		request.setAttribute("newProductList", newProductList);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
	
}
