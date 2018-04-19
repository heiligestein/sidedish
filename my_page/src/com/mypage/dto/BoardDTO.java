package com.mypage.dto;

import java.util.Date;

public class BoardDTO {
	private int bno;
    private String title;
    private String content;
    private String writer;
    private String password;
    private Date regdate;
    private int viewcnt;
    private int goodcnt;
    private int replycnt;
    	

	public int getGoodcnt() {
		return goodcnt;
	}



	public void setGoodcnt(int goodcnt) {
		this.goodcnt = goodcnt;
	}



	public int getReplycnt() {
		return replycnt;
	}



	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}



	public BoardDTO() {
		super();
	}

	

	public BoardDTO(int bno) {
		super();
		this.bno = bno;
	}


	public BoardDTO(int bno, String title, String content) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
	}




	public BoardDTO(int bno, String title, String content, String writer, String password, Date regdate, int viewcnt,
			int goodcnt, int replycnt) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.password = password;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
		this.goodcnt = goodcnt;
		this.replycnt = replycnt;
	}



	public BoardDTO(String title, String content, String writer, String password) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.password = password;
	}



	public BoardDTO(int bno, String title, String content, String writer, String password, Date regdate, int viewcnt) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.password = password;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
	}



	public int getBno() {
		return bno;
	}



	public void setBno(int bno) {
		this.bno = bno;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public Date getRegdate() {
		return regdate;
	}



	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}



	public int getViewcnt() {
		return viewcnt;
	}



	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
    
}
