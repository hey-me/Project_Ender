package com.ender.usermodel;

public class UserDTO {

	private String userName;
	private String userID;
	private String userPW;
	private String userBirth;
	private String userPhone;
	private String userAddress;
	private int userGrade;

	public UserDTO() {
	}

	public UserDTO(String userName, String userID, String userPW, String userBirth, String userPhone,
			String userAddress, int userGrade) {
		super();
		this.userName = userName;
		this.userID = userID;
		this.userPW = userPW;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userGrade = userGrade;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public int getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}

	@Override
	public String toString() {
		return "UserDTO [userName=" + userName + ", userID=" + userID + ", userPW=" + userPW + ", userBirth="
				+ userBirth + ", userPhone=" + userPhone + ", userAddress=" + userAddress + ", userGrade=" + userGrade
				+ "]";
	}

}
