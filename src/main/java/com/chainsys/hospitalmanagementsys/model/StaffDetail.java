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
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "STAFF_DETAILS")
public class StaffDetail {
	@Id
	@Column(name = "staff_id")
	@Min(value = 100,message="Enter a valid Id between 100 to 199")
	@Max(value = 199,message="Enter a valid Id between 100 to 199")
	private int staffId;
	@Column(name = "staff_name")
	@NotNull(message="Username is required")
	private String staffName;
	@Column(name = "dob")
	@NotNull(message="Correct date format is required ")
	private Date dob;
	@Column(name = "gender")
	@NotNull(message="Gender is required")
	private String gender;
	@Column(name = "phone_no")
	@Digits(integer = 10, fraction = 0)
	private long phoneNo;
	@Column(name = "email_id ")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String emailId;
	@org.springframework.data.annotation.Transient
	@Column(name = "password")
	@NotNull(message = "Password must contains atleast 8 digits")
	private String password;
	@Column(name = "designation")
	@NotNull(message = "Designation must be required")
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
