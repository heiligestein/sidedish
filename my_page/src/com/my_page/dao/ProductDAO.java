package com.my_page.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.my_page.common.DBManager;
import com.my_page.dto.ProductDTO;

public class ProductDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result;
	public ArrayList<ProductDTO> listBestProduct() {
		ArrayList<ProductDTO> list = new ArrayList<>();
		
		try {
			conn = DBManager.getConnection();
			String sql =  "SELECT * FROM best_pro_view";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				String p_price2 = rs.getString("p_price2");
				String p_img = rs.getString("p_img");
				ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
			
				list.add(pDto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	
	
	
}
