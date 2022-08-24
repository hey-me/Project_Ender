package com.ender.model;

public class BookVO {
	private int b_num;
	private String b_name;
	private String b_image;
	private String b_pub;
	private String b_info;
	private int b_price;

	public BookVO() {
	}

	public BookVO(String b_name, String b_image, String b_pub, String b_info, int b_price) {
		super();
		this.b_name = b_name;
		this.b_image = b_image;
		this.b_pub = b_pub;
		this.b_info = b_info;
		this.b_price = b_price;
	}

	public BookVO(int b_num, String b_name, String b_image, String b_pub, String b_info, int b_price) {
		super();
		this.b_num = b_num;
		this.b_name = b_name;
		this.b_image = b_image;
		this.b_pub = b_pub;
		this.b_info = b_info;
		this.b_price = b_price;
	}


	public String getB_pub() {
		return b_pub;
	}


	public void setB_pub(String b_pub) {
		this.b_pub = b_pub;
	}


	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_image() {
		return b_image;
	}

	public void setB_image(String b_image) {
		this.b_image = b_image;
	}

	public String getB_info() {
		return b_info;
	}

	public void setB_info(String b_info) {
		this.b_info = b_info;
	}

	public int getB_price() {
		return b_price;
	}

	public void setB_price(int b_price) {
		this.b_price = b_price;
	}


}
