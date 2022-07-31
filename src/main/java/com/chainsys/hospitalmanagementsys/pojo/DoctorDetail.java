package com.chainsys.hospitalmanagementsys.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name=" doctor_details")
public class DoctorDetail {
	@Id
	private int s_id ;
	private String speciality ;
	private String role_type;
	private int normal_fees ;
	private int staff_id;
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getRole_type() {
		return role_type;
	}
	public void setRole_type(String role_type) {
		this.role_type = role_type;
	}
	public int getNormal_fees() {
		return normal_fees;
	}
	public void setNormal_fees(int normal_fees) {
		this.normal_fees = normal_fees;
	}
	public int getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
	
}
