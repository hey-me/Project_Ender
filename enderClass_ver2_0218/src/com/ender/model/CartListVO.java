package com.ender.model;

public class CartListVO {
	private String c_name;
	private String c_tr;
	private int c_price;
	private String b_image;
	private String b_name;
	private int b_price;
	private int c_num;
	private int b_num;
	
	public CartListVO() {
	}
	public CartListVO(String c_name, String c_tr, int c_price, String b_image, String b_name, int b_price,int c_num, int b_num) {
		super();
		this.c_name = c_name;
		this.c_tr = c_tr;
		this.c_price = c_price;
		this.b_image = b_image;
		this.b_name = b_name;
		this.b_price = b_price;
		this.c_num=c_num;
		this.b_num=b_num;
	}
	public int getC_num() {
		return c_num;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getB_image() {
		return b_image;
	}
	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_tr() {
		return c_tr;
	}
	public void setC_tr(String c_tr) {
		this.c_tr = c_tr;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	
	
}
