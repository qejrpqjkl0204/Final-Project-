package user;

public class User {
	
	private String userID; 
	private String userPassword; 
	private String userName; 
	private String userGender; 
	private String userEmail;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
//한명의 회원 데이터를 다룰 수 있는 데이터베이스 및 자바빈즈가 완성됨. 이런식으로 하나의 데이터를 다루고 처리 할 수있는 기법 자바빈즈라 함
}
