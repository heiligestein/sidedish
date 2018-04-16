package com.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mypage.dto.ReplyDTO;

public class ReplyDAO {
	
	SqlSessionFactory sqlSessionFactory = com.mypage.myBatis.SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	
	private ReplyDAO() {
	}
	
	private static ReplyDAO instance = new ReplyDAO();
	
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	int result;
	
	public List<ReplyDTO> replySelect(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		List<ReplyDTO> list = null;
		try {
			list = sqlSession.selectList("replyAll",bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
	public int replyInsert(ReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result = sqlSession.insert("replyinsert",rDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
}
