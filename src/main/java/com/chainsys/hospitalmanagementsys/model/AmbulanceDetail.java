package com.chainsys.hospitalmanagementsys.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="AMBULANCE")
public class AmbulanceDetail {
	@Id
	@Column(name="register_id")
	private int registerId ;
	@Column(name="purchase_date")
	private Date purchaseDate;
	@Column(name="ambulance_model")
	private String ambulanceModel;
	@Column(name="status")
	private String status ;
	@Column(name="staff_id")
	private int staffId ;
	public int getRegisterId() {
		return registerId;
	}
	public void setRegisterId(int registerId) {
		this.registerId = registerId;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public String getAmbulanceModel() {
		return ambulanceModel;
	}
	public void setAmbulanceModel(String ambulanceModel) {
		this.ambulanceModel = ambulanceModel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
}
