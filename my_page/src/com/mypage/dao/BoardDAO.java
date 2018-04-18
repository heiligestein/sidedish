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
	public int totalCount() {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("countPaging");
		
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
	
	//게시글 조회수 증가
	public void boardViewCnt(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardViewCnt",bno);
			sqlSession.commit();
			if (result > 0 ) {
				System.out.println("조회수가 증가했습니다.");
			}else {
				System.out.println("조회수가 증가하지 않았습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
	}
	
	//게시글 검색
	public List<BoardDTO> boardSearch(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = null;
		try {
			System.out.println("====>"+criDto.getKeyword());
			System.out.println("====>"+criDto.getRadio());
			list = sqlSession.selectList("boardsearch", criDto);
			
			for (BoardDTO boardDTO : list) {
				System.out.print(boardDTO.getBno()+"\t");
				System.out.print(boardDTO.getTitle()+"\t");
				//System.out.print(boardDTO.getContent()+"\t");
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
}
