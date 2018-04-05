package com.mypage.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mypage.common.DBManager;
import com.mypage.dto.MemberDTO;
import com.mypage.dto.ProductDTO;

import oracle.sql.DATE;

public class MemberDAO {
	// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = myBatis.SqlMapConfig.getSqlSession();
		
		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		private MemberDAO() {
		}
		private static MemberDAO instance = new MemberDAO();
		public static MemberDAO getInstance() {
			return instance;
		}
		
	int result, flag;
	
	// ID 중복체크
	public int memIdCheck(String memberid) {
		sqlSession = sqlSessionFactory.openSession();
		List<E>
		
		try {
			flag = sqlSession.selectList(arg0);
			
			
			if(mid != null) {
				System.out.println("중복된 아이디 입니다.");
				flag = 0;
			}else {
				System.out.println("사용 가능한 아이디입니다.");
				flag = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return flag;
	}
	
	//회원 등록
	public int memInsert(MemberDTO mDto) {
		try {
			
			result = sqlSession.insert("memberinsert");
			
			if (result > 0) {
				System.out.println("회원 등록 성공");
			}else {
				System.out.println("회원 등록 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	// 로그인 ID , PW 등록된 회원인지 체크
	public MemberDTO sessionLogin(String mid,String mpw) {
		MemberDTO mDto = null;
		
		try {
			conn = DBManager.getConnection();
			String sql =  "SELECT * FROM member WHERE mid= ? AND mpw= ? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mid = rs.getString("mid");
				mpw = rs.getString("mpw"); 
				String mname = rs.getString("mname");
				String mphone = rs.getString("mphone");
				String maddr = rs.getString("maddr"); 
				String mbirth = rs.getString("mbirth"); 
				String memail = rs.getString("memail"); 
				String msex = rs.getString("msex"); 
				Date regdate = rs.getDate("regdate");
				
				mDto = new MemberDTO(mid, mpw, mname, mphone, maddr, mbirth, memail, msex, regdate);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt,rs);
		}
		return mDto;
	}

	public int memLogin(String mid,String mpw) {
		try {
			conn = DBManager.getConnection();
			String sql =  "SELECT * FROM member WHERE mid= ? AND mpw= ? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			rs = pstmt.executeQuery();
			
			if(rs.next() == false) {
				flag = 0;
			}	else {
				flag = 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt,rs);
		}
		return flag;
	}
}
