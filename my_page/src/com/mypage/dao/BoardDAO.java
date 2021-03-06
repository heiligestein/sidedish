package com.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
			 if(sqlSession != null)	sqlSession.close();
		}
		return list;
	}
	
	//게시글 입력하기
	public int boardInsert(BoardDTO bDto) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			result = sqlSession.insert("boardinsert", bDto);
			sqlSession.commit();
			
			System.out.println("result ="+ result);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
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
			System.out.println(bDto.getGoodcnt());
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
		}
		
		return bDto;
	}
	//새로운 게시글 출력 
	public int totalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("scountPaging",criDto);
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
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
			 if(sqlSession != null)	sqlSession.close();
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
			 if(sqlSession != null)	sqlSession.close();
		}
		return result;
	}
	
	//게시글 조회수 증가
	public void boardViewCnt(Integer bno,HttpSession countSession) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			long update_time = 0;
			
			// 조회수를 증가할 때 생기는 read_time_게시글 번호가 없으면
			// 현재 처음 조회수를 1 증가하는 경우
			if (countSession.getAttribute("read_time_"+bno) != null) {
				update_time = (long)countSession.getAttribute("read_time_"+bno);
			}
			// 현재시간을 담는다.
			long current_time = System.currentTimeMillis();
			
			// 현재시간과 조회수 1증가한 시간을 비교해서 24시간(1일)이 지났으면
			// 조회수 1증가
			if (current_time - update_time > 24 * 60 * 60 * 1000) {
				result = sqlSession.update("boardViewCnt",bno);
				sqlSession.commit();
				
				// 조회수 1 증가한 시간을 session에 담는다.
				countSession.setAttribute("read_time_"+bno, current_time);
			}
			
			if (result > 0 ) {
				System.out.println("조회수가 증가했습니다.");
			}else {
				System.out.println("조회수가 증가하지 않았습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
		}
		
	}
	//게시글 정렬
	public List<BoardDTO> boardCategory(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = null;
		
		try {
			list = sqlSession.selectList("boardcategory",criDto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
		}
		return list;
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
			 if(sqlSession != null)	sqlSession.close();
		}
		return list;
	}
	
	// 게시글 좋아요 증가
	public void BoardGoodCnt(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result = sqlSession.update("boardGoodCnt",bno);
			sqlSession.commit();
			if (result > 0 ) {
				System.out.println("좋아요 1 증가");
			}else {
				System.out.println("좋아요 1 증가 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
		}
	}
	
	// 게시글의 파일 다운로드
	
	public String getFileName(Integer bno) {
		String result = "";
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("getfilename",bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
		}
		return result;
	}
	
	// 파일 다운로드 시 횟수 증가 
	
	public void downCnt(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result = sqlSession.update("downcnt",bno);
			sqlSession.commit();
			if (result > 0 ) {
				System.out.println("다운로드 횟수 1 증가");
			}else {
				System.out.println("다운로드 횟수 1 증가 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 if(sqlSession != null)	sqlSession.close();
		}
	}
	// 답글의 순서 조정
	public void updateStep(int ref,int re_step) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			BoardDTO bDto = new BoardDTO();
			bDto.setRef(ref);
			bDto.setRe_step(re_step);
			
			sqlSession.update("updatestep",bDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
		 if(sqlSession != null)	 if(sqlSession != null)	sqlSession.close();
		}
	}
	
	//게시글 입력하기
		public int answerInsert(BoardDTO bDto) {
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				
				result = sqlSession.insert("answerinsert", bDto);
				sqlSession.commit();
				
				System.out.println("result ="+ result);
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				 if(sqlSession != null)	sqlSession.close();
			}
			
			return result;
		}
}
