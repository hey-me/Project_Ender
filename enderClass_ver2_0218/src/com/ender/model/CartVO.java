package com.ender.model;

public class CartVO {
	private String userID;
	private int c_num;
	private int b_num;
	
	public CartVO() {
	}
	public CartVO(String userID, int c_num, int b_num) {
		this.userID = userID;
		this.c_num = c_num;
		this.b_num = b_num;
	}

	public String getuserID() {
		return userID;
	}

	public void setuserID(String userID) {
		this.userID = userID;
	}

	public int getC_num() {
		return c_num;
	}

	public void setC_num(int c_num) {
		this.c_num = c_num;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	

}
