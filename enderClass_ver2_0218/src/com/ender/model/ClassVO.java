package com.ender.model;

public class ClassVO {
	private int c_num;
	private String c_name;
	private String c_tr;
	private int c_price;
	private int c_content;
	private String c_info;
	private int b_num;

	public ClassVO() {
	}

	public ClassVO(String c_name, String c_tr, int c_price, int c_content, String c_info, int b_num) {
		this.c_name = c_name;
		this.c_tr = c_tr;
		this.c_price = c_price;
		this.c_content = c_content;
		this.c_info = c_info;
		this.b_num = b_num;
	}

	public ClassVO(int c_num, String c_name, String c_tr, int c_price, int c_content, String c_info, int b_num) {
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_tr = c_tr;
		this.c_price = c_price;
		this.c_content = c_content;
		this.c_info = c_info;
		this.b_num = b_num;
	}



	public int getB_num() {
		return b_num;
	}



	public void setB_num(int b_num) {
		this.b_num = b_num;
	}



	public String getInfo() {
		return c_info;
	}

	public void setInfo(String info) {
		this.c_info = info;
	}

	public int getNum() {
		return c_num;
	}

	public void setNum(int num) {
		this.c_num = num;
	}

	public String getName() {
		return c_name;
	}

	public void setName(String name) {
		this.c_name = name;
	}

	public String getTr() {
		return c_tr;
	}

	public void setTr(String tr) {
		this.c_tr = tr;
	}

	public int getPrice() {
		return c_price;
	}

	public void setPrice(int price) {
		this.c_price = price;
	}

	public int getContent() {
		return c_content;
	}

	public void setContent(int content) {
		this.c_content = content;
	}

	@Override
	public String toString() {
		return "ClassVO [c_num=" + c_num + ", c_name=" + c_name + ", c_tr=" + c_tr + ", c_price=" + c_price
				+ ", c_content=" + c_content + ", c_info=" + c_info + "]";
	}


}
