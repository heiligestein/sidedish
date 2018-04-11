package com.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mypage.dto.BoardDTO;

public class BoardDAO {
			
	SqlSessionFactory sqlSessionFactory = com.mypage.myBatis.SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	
	private BoardDAO() {
	}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	int result;
	//게시글 전체 보기
	public List<BoardDTO> listAll() {
		
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		
		try {

			list = sqlSession.selectList("boardlistAll");
			
			for (BoardDTO boardDTO : list) {
				System.out.print(boardDTO.getBno()+"\t");
				System.out.print(boardDTO.getTitle()+"\t");
				System.out.print(boardDTO.getContent()+"\t");
				System.out.print(boardDTO.getWriter()+"\t");
				System.out.print(boardDTO.getRegdate()+"\t");
				System.out.print(boardDTO.getViewcnt()+"\t");
				System.out.println();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	//게시글 입력하기
	public int boardInsert(String title, String content, String writer) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			BoardDTO bDto = new BoardDTO(title, content, writer);
			result = sqlSession.insert("boardinsert", bDto);
			sqlSession.commit();
			
			System.out.println("result ="+ result);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}
}
