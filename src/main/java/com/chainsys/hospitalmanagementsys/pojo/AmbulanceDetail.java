package com.chainsys.hospitalmanagementsys.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="staff_details")
public class AmbulanceDetail {
	@Id
	private int register_id ;
	private Date purchase_date;
	private String ambulance_model;
	private String status ;
	private int staff_id ;
	public int getRegister_id() {
		return register_id;
	}
	public void setRegister_id(int register_id) {
		this.register_id = register_id;
	}
	public Date getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Date purchase_date) {
		this.purchase_date = purchase_date;
	}
	public String getAmbulance_model() {
		return ambulance_model;
	}
	public void setAmbulance_model(String ambulance_model) {
		this.ambulance_model = ambulance_model;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
}
