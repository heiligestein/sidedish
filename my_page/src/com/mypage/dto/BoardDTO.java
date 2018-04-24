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
    private String filename;
    private int filesize;
    private int downcnt;
    private int ref;
    private int re_step;
    private int re_level;
    	
    
	public int getDowncnt() {
		return downcnt;
	}



	public void setDowncnt(int downcnt) {
		this.downcnt = downcnt;
	}



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



	public BoardDTO(String title, String content, String writer, String password, String filename, int filesize) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.password = password;
		this.filename = filename;
		this.filesize = filesize;
	}



	



	public BoardDTO(int bno, String title, String content, String writer, String password, Date regdate, int viewcnt,
			int goodcnt, int replycnt, String filename, int filesize, int downcnt, int ref, int re_step, int re_level) {
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
		this.filename = filename;
		this.filesize = filesize;
		this.downcnt = downcnt;
		this.ref = ref;
		this.re_step = re_step;
		this.re_level = re_level;
	}



	public String getFilename() {
		return filename;
	}



	public void setFilename(String filename) {
		this.filename = filename;
	}



	public int getFilesize() {
		return filesize;
	}



	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}



	public int getRef() {
		return ref;
	}



	public void setRef(int ref) {
		this.ref = ref;
	}



	public int getRe_step() {
		return re_step;
	}



	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}



	public int getRe_level() {
		return re_level;
	}



	public void setRe_level(int re_level) {
		this.re_level = re_level;
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
