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

	//댓글 조회
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
	//댓글 저장
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
	
	//댓글 삭제
	public void replyDelete(Integer rno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("replydelete",rno);
			sqlSession.commit();
			
			if (result > 0) {
				System.out.println("댓글 삭제 성공");
			}else {
				System.out.println("댓글 삭제 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	int resresult;
	//게시글 삭제시 댓글 연쇄삭제
	public int casecadeReplyDel(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			int resresult = sqlSession.delete("casecadereplydel",bno);
						 sqlSession.commit();
			if (resresult > 0) {
				System.out.println("댓글 연쇄 삭제 성공");
			}else {
				System.out.println("댓글 연쇄 삭제 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (sqlSession != null) { sqlSession.close();}
		}
		return resresult;
	}
}
