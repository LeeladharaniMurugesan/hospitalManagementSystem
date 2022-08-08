package com.chainsys.hospitalmanagementsys.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "AMBULANCE")
public class AmbulanceDetail {
	@Id
	@Column(name = "register_id")
//	@RegisterId(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String registerId;
	@Column(name = "purchase_date")
	@NotNull(message="Correct date format is required ")
	private Date purchaseDate;
	@Column(name = "ambulance_model")
	@Size(max = 20, min = 3, message = "*Ambulance Model should be 3 to 20")
	@NotBlank(message = "*Ambulance model is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Ambulance Model ")
	private String ambulanceModel;
	@Column(name = "status")
	@Size(max = 20, min = 3, message = "*status  should be 3 to 20")
	@NotBlank(message = "*Status is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid status ")
	private String status;
	@Column(name = "staff_id")
	@Min(value = 100, message = "Enter a Valid Id")
	@Max(value = 199, message = "Enter a Valid Id")
	private int staffId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "staff_id", nullable = false, insertable = false, updatable = false)
	private StaffDetail staffambulancedetails;

	public StaffDetail getStaffambulancedetails() {
		return staffambulancedetails;
	}

	public void setStaffambulancedetails(StaffDetail staffambulancedetails) {
		this.staffambulancedetails = staffambulancedetails;
	}

	public String getRegisterId() {
		return registerId;
	}

	public void setRegisterId(String registerId) {
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
