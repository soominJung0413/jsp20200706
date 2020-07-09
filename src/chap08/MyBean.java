package chap08;

import java.io.Serializable;

public class MyBean implements Serializable{//이것을 붙이면 데이터가 byte로 인코딩 및 직렬화 되는 듯 서버들끼리 공유하는 데이터처리를 위해 씀
	private String name;
	private int id;
	private boolean b;
	
	//프로퍼티는 메서드에 의해 결정 됨
	
	
//	하나의 프로퍼티가 된 것이다. 필드와 관련 없다 get set 메서드와 관련이있다.
	public String getFirstName() {
		return name.substring(0,3);
	}
	
	public boolean isB() {
		return b;
	}

	public void setB(boolean b) {
		this.b = b;
	}

	public MyBean() {
		// TODO Auto-generated constructor stub
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
}
