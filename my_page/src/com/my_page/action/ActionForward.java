package com.my_page.action;

public class ActionForward {
	//view page(결과 값을 어디로 넘길지 결정)
	private String path;
	// 페이지 이동 2가지 방법(sendRedirect, Forward)
	// true -> sendRedirect,	 false -> forward
	private boolean isRedirect;
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
