package chap08;

import java.io.Serializable;
import java.util.Date;

public class MemberInfo implements Serializable{
	private String id;
	private String password;
	private String name;
	private Date rgisterDate;
	private String email;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRgisterDate() {
		return rgisterDate;
	}
	public void setRgisterDate(Date rgisterDate) {
		this.rgisterDate = rgisterDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
