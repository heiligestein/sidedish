package com.my_page.dto;

import oracle.sql.DATE;

public class MemberDTO {
	private String mid; 
	private String mpw; 
	private String mname;
	private String mphone;
	private String maddr; 
	private String mbirth; 
	private String memail; 
	private String msex; 
	private DATE regdate;

	public MemberDTO() {
		super();
	}

	public MemberDTO(String mid, String mpw, String mname, String mphone, String maddr, String mbirth, String memail,
			String msex, DATE regdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.maddr = maddr;
		this.mbirth = mbirth;
		this.memail = memail;
		this.msex = msex;
		this.regdate = regdate;
	}

	public MemberDTO(String mid, String mpw, String mname, String mphone, String memail, String msex) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.msex = msex;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMaddr() {
		return maddr;
	}

	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}

	public String getMbirth() {
		return mbirth;
	}

	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMsex() {
		return msex;
	}

	public void setMsex(String msex) {
		this.msex = msex;
	}

	public DATE getRegdate() {
		return regdate;
	}

	public void setRegdate(DATE regdate) {
		this.regdate = regdate;
	}

	

	
}
