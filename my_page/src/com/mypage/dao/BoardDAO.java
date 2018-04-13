package com.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mypage.dto.BoardDTO;
import com.mypage.dto.CriteriaDTO;

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
	public List<BoardDTO> listAll(CriteriaDTO criDto) {
		
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		
		try {

			list = sqlSession.selectList("listCriteria",criDto);
			
			for (BoardDTO boardDTO : list) {
				System.out.print(boardDTO.getBno()+"\t");
				System.out.print(boardDTO.getTitle()+"\t");
				System.out.print(boardDTO.getWriter()+"\t");
				System.out.print(boardDTO.getPassword()+"\t");
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
	public int boardInsert(String title, String content, String writer, String password) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			BoardDTO bDto = new BoardDTO(title, content, writer, password);
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
	
	//게시글 출력
	public BoardDTO boardDetailView(Integer bno) {
		
		sqlSession = sqlSessionFactory.openSession();
		BoardDTO bDto = null;
		
		try {
			//여러건 출력시 SelectList = list 타입
			//단건 출력시 SelectOne = DTO타입
			bDto = sqlSession.selectOne("boarddetailview",bno);
			
			System.out.print(bDto.getBno());
			System.out.print(bDto.getTitle());
			System.out.print(bDto.getWriter());
			System.out.print(bDto.getPassword());
			System.out.print(bDto.getRegdate());
			System.out.print(bDto.getViewcnt());
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return bDto;
	}
	//새로운 게시글 출력 
	public int totalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("countPaging",criDto);
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	
	//게시글 수정하기
	public int BoardUpdate(String title, String content , Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			BoardDTO bDto = new BoardDTO(bno, title, content);
			result = sqlSession.update("boardupdate", bDto);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return result;
	}
	
	//게시글 삭제하기
	public int BoardDelete(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("boarddelete",bno);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
}