package com.chainsys.hospitalmanagementsys.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "STAFF_DETAILS")
public class StaffDetail {
	@Id
	@Column(name = "staff_id")
	private int staffId;
	@Column(name = "staff_name")
	private String staffName;
	@Column(name = "dob")
	private Date dob;
	@Column(name = "gender")
	private String gender;
	@Column(name = "phone_no")
	private long phoneNo;
	@Column(name = "email_id ")
	private String emailId;
	@org.springframework.data.annotation.Transient
	@Column(name = "password")
	private String password;
	@Column(name = "designation")
	private String designation;
	@OneToOne(mappedBy ="staffdetail", fetch = FetchType.LAZY)
	private DoctorDetail doctor;

	public DoctorDetail getDoctor() {
		return doctor;
	}

	public void setDoctor(DoctorDetail doctor) {
		this.doctor = doctor;
	}

	@OneToMany(mappedBy = "staffdetails", fetch = FetchType.LAZY)
	private List<DoctorVisitDetail> doctorvisit;

	public List<DoctorVisitDetail> getDoctorvisit() {
		return doctorvisit;
	}

	public void setDoctorvisit(List<DoctorVisitDetail> doctorvisit) {
		this.doctorvisit = doctorvisit;
	}

	@OneToMany(mappedBy = "staffambulancedetails", fetch = FetchType.LAZY)
	private List<AmbulanceDetail> ambulancedetail;

	public List<AmbulanceDetail> getAmbulancedetail() {
		return ambulancedetail;
	}

	public void setAmbulancedetail(List<AmbulanceDetail> ambulancedetail) {
		this.ambulancedetail = ambulancedetail;
	}

	@OneToMany(mappedBy = "staffbookingcancellationdetails", fetch = FetchType.LAZY)
	private List<BookingCancellationDetail> bookingcancellationdetail;

	public List<BookingCancellationDetail> getBookingcancellationdetail() {
		return bookingcancellationdetail;
	}

	public void setBookingcancellationdetail(List<BookingCancellationDetail> bookingcancellationdetail) {
		this.bookingcancellationdetail = bookingcancellationdetail;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

}
