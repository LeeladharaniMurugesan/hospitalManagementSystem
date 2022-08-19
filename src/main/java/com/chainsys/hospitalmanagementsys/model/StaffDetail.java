package com.chainsys.hospitalmanagementsys.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "STAFF_DETAILS")
public class StaffDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "staff_id_ref")
	@SequenceGenerator(name = "staff_id_ref", sequenceName = "staff_id_ref", allocationSize = 1)
	@Column(name = "staff_id")
	@NotBlank(message = "*StaffId is required")
	private int staffId;
	@Column(name = "staff_name")
	@NotBlank(message = "*StaffName is required")
	private String staffName;
	@Column(name = "dob")
	@NotBlank(message = "*Dob is required")
	private Date dob;
	@Column(name = "gender")
	@NotBlank(message = "*Gender is required")
	private String gender;
	@Column(name = "phone_no")
	private long phoneNo;
	@Column(name = "email_id ")
	@NotBlank(message = "*EmailId is required")
	private String emailId;
	@Column(name = "password")
	@NotBlank(message = "*Password is required")
	private String password;
	@Column(name = "designation")
	@NotBlank(message = "Designation is required")
	private String designation;
	@OneToOne(mappedBy = "staffdetail", fetch = FetchType.LAZY)
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
