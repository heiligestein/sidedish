package com.mypage.dto;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private String p_price2;
	private String p_img;
	private String p_weight;
	private String p_hot;
	
	public ProductDTO() {
		super();
	}


	public String getP_weight() {
		return p_weight;
	}


	public void setP_weight(String p_weight) {
		this.p_weight = p_weight;
	}


	public String getP_hot() {
		return p_hot;
	}


	public void setP_hot(String p_hot) {
		this.p_hot = p_hot;
	}


	public ProductDTO(String p_code, String p_name, String p_price2, String p_img, String p_weight, String p_hot) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price2 = p_price2;
		this.p_img = p_img;
		this.p_weight = p_weight;
		this.p_hot = p_hot;
	}


	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_price2() {
		return p_price2;
	}

	public void setP_price2(String p_price2) {
		this.p_price2 = p_price2;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	
}
