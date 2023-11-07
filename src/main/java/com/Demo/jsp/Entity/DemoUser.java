package com.Demo.jsp.Entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Employees")
public class DemoUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	
	@Column(name="Name")
	 private String name;
	@Column(name="Age")
	 private Integer age;
	@Column(name="Department")
	 private String dept;
	@Column(name="Email Id")
	 private String email;
	@Column(name="Mobile No")
	 private Long mob_no;
	@Column(name="Gender")
	 private String gender;
	 
	 public DemoUser() {
			
		}

	public DemoUser(Long id, String name, Integer age, String dept, String email, Long mob_no, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.dept = dept;
		this.email = email;
		this.mob_no = mob_no;
		this.gender = gender;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getMob_no() {
		return mob_no;
	}

	public void setMob_no(Long mob_no) {
		this.mob_no = mob_no;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	 

}
