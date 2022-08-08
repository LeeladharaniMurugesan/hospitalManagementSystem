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
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
@Entity
@Table(name="DOCTOR_VISITDETAILS")
public class DoctorVisitDetail {
	@Id
	@Column(name="s_no")
	private int sNo ;
	@Column(name="staff_id")
	@Min(value = 100, message = "Enter a Valid Id")
	@Max(value = 199, message = "Enter a Valid Id")
	private int staffId ;
	@NotNull(message="Date should not be null")
	@Column(name="visited_date")
	private Date visitedDate ;
	@Column(name="from_time")
	@Size(max = 20, min = 3, message = "*From Time length should be 3 to 20")
	@NotBlank(message = "*From Time is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Time ")
	private String fromTime ;
	@Column(name="to_time")
	@Size(max = 20, min = 3, message = "*From Time length should be 3 to 20")
	@NotBlank(message = "*From Time is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Time ")
	private String toTime ;
	@Column(name="dailyfees")
	@Range(min = (int) 100.0)
	private int dailyFees;
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="staff_id" , nullable=false,insertable=false,updatable=false)
    private StaffDetail staffdetails;
   
	public StaffDetail getStaffdetails() {
		return staffdetails;
	}
	public void setStaffdetails(StaffDetail staffdetails) {
		this.staffdetails = staffdetails;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public Date getVisitedDate() {
		return visitedDate;
	}
	public void setVisitedDate(Date visitedDate) {
		this.visitedDate = visitedDate;
	}
	public String getFromTime() {
		return fromTime;
	}
	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}
	public String getToTime() {
		return toTime;
	}
	public void setToTime(String toTime) {
		this.toTime = toTime;
	}
	public int getDailyFees() {
		return dailyFees;
	}
	public void setDailyFees(int dailyFees) {
		this.dailyFees = dailyFees;
	}
	
	
}