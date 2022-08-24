package com.chainsys.hospitalmanagementsys.model;
import java.sql.Date;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

@Entity
@Table(name = "AMBULANCE")
public class AmbulanceDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "ambulance_id_ref")
	@SequenceGenerator(name = "ambulance_id_ref", sequenceName = "ambulance_id_ref", allocationSize = 1)
	@Column(name="ambulance_id")
	private int ambulanceId;
	@Column(name="register_no")
	private String registerNo;
	@Column(name = "purchase_date")
	@Past
	private Date purchaseDate;
	@Column(name = "ambulance_model")
	@Size(max = 20, min = 3, message = "*Ambulance Model should be 3 to 20")
	private String ambulanceModel;
	
	@Column(name="ambulance_time ")
	private String ambulanceTime;
	@Column(name = "status")
	@Size(max = 20, min = 3, message = "*status  should be 3 to 20")
	private String status;
	@Column(name="ambulance_status")
	private String ambulanceStatus;
	@Column(name = "staff_id")
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

	public int getAmbulanceId() {
		return ambulanceId;
	}

	public void setAmbulanceId(int ambulanceId) {
		this.ambulanceId = ambulanceId;
	}

	public String getRegisterNo() {
		return registerNo;
	}

	public void setRegisterNo(String registerNo) {
		this.registerNo = registerNo;
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

	public String getAmbulanceTime() {
		return ambulanceTime;
	}

	public void setAmbulanceTime() {
		 Calendar vCalendar = Calendar.getInstance();
	        String ambulanceTime = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
	                + vCalendar.get(Calendar.YEAR) + " : " + vCalendar.get(Calendar.HOUR) + " : "
	                + vCalendar.get(Calendar.MINUTE);
	        this.ambulanceTime =ambulanceTime;
}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAmbulanceStatus() {
		return ambulanceStatus;
	}

	public void setAmbulanceStatus(String ambulanceStatus) {
		this.ambulanceStatus = ambulanceStatus;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	

}
