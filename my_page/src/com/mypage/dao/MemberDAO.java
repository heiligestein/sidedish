package com.mypage.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mypage.dto.MemberDTO;

import oracle.sql.DATE;

public class MemberDAO {
		// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = com.mypage.myBatis.SqlMapConfig.getSqlSession();
		
		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		private MemberDAO() {
		}
		
		private static MemberDAO instance = new MemberDAO();
		public static MemberDAO getInstance() {
			return instance;
		}
		
	int result;

	
	// ID 중복체크
	public List<MemberDTO> memIdCheck(String mid) {
		List<MemberDTO> list = new ArrayList<>();
		
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("membercheck",mid);
			
			for (MemberDTO memberDTO : list) {
				System.out.print(memberDTO.getMid()+"\t");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		
		return list;
	}
	
	//회원 등록
	public int memInsert(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.insert("memberinsert",mDto);
			sqlSession.commit();
			if (result > 0) {
				System.out.println("회원 등록 성공");
			}else {
				System.out.println("회원 등록 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		
		return result;
	}
	
	// 로그인 시 ID , PW 등록된 회원인지 체크
	public MemberDTO sessionLogin(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<MemberDTO> list = new ArrayList<>();
		
		try {	
			list = sqlSession.selectList("sessionLogin", mDto);
			for (MemberDTO memberDTO : list) {
				System.out.print(memberDTO.getMid()+"\t");
				System.out.print(memberDTO.getMpw()+"\t");
				System.out.print(memberDTO.getMname()+"\t");
				System.out.println();
				
				String mid = memberDTO.getMid();
				String mpw = memberDTO.getMpw();
				String mname = memberDTO.getMname();
				String mphone = memberDTO.getMphone();
				String mpost = memberDTO.getMpost();
				String maddr = memberDTO.getMaddr();
				String mbirth = memberDTO.getMbirth();
				String memail = memberDTO.getMemail();
				String msex = memberDTO.getMsex();
				
				mDto = new MemberDTO(mid, mpw, mname, mphone, mpost, maddr, mbirth, memail, msex);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		return mDto;
	}

	
	public List<MemberDTO> memLogin(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<MemberDTO> list = new ArrayList<>();
		try {
			list =sqlSession.selectList("memLogin", mDto);
			for (MemberDTO memberDTO : list) {
				System.out.print(memberDTO.getMid()+"\t");
				System.out.println(memberDTO.getMpw()+"\t");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null)	sqlSession.close();
		}
		return list;
	}
}
