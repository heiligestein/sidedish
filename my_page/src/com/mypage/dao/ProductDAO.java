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
	
	
	
	
}
