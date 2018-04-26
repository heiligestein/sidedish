package com.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mypage.common.DBManager;
import com.mypage.dto.ProductDTO;

public class ProductDAO {
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = com.mypage.myBatis.SqlMapConfig.getSqlSession();
	
	//mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	private ProductDAO() {
	}
	
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}
	
	/*Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;*/
	int result = 0;
	//신상품
	public List<ProductDTO> listNewProduct() {
		List<ProductDTO> list = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("newpdtview");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		return list;
	}
	//베스트 상품
	public List<ProductDTO> listBestProduct() {
		List<ProductDTO> list = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("bestpdtview");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		return list;
	}
	
	public ProductDTO selectNewProduct(String p_code) {
		List<ProductDTO> list = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		ProductDTO pDto = null;
		try {
			list = sqlSession.selectList("selectnewpdtview",p_code);
			for (ProductDTO productDTO : list) {
				p_code = productDTO.getP_code();
				String p_name = productDTO.getP_name();
				String p_img = productDTO.getP_img();
				String p_price2 = productDTO.getP_price2();
				String p_weight = productDTO.getP_weight();
				String p_hot = productDTO.getP_hot();
				
				pDto = new ProductDTO(p_code, p_name, p_price2, p_img, p_weight, p_hot);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		return pDto;
	}

	public ProductDTO selectBestProduct(String p_code) {
		List<ProductDTO> list = new ArrayList<>();
		sqlSession = sqlSessionFactory.openSession();
		ProductDTO pDto = null;
		
		try {
			list = sqlSession.selectList("selectbestpdtview",p_code);
			for (ProductDTO productDTO : list) {
				p_code = productDTO.getP_code();
				String p_name = productDTO.getP_name();
				String p_img = productDTO.getP_img();
				String p_price2 = productDTO.getP_price2();
				String p_weight = productDTO.getP_weight();
				String p_hot = productDTO.getP_hot();
				
				pDto = new ProductDTO(p_code, p_name, p_price2, p_img, p_weight, p_hot);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		return pDto;
	}
	

	
	
}
