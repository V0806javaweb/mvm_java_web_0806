package model;

public class LoginBean {
	String user,password,phone;

	public LoginBean() {
	}

	public LoginBean(String user, String password, String phone) {
		this.user = user;
		this.password = password;
		this.phone = phone;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
