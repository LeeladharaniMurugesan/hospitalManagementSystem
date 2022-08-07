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
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
@Entity
@Table(name="DOCTOR_VISITDETAILS")
public class DoctorVisitDetail {
	@Id
	@Column(name="s_no")
	@Min(value = 1, message = "Enter a Valid Id")
	@Max(value = 100, message = "Enter a Valid Id")
	private int sNo ;
	@Column(name="staff_id")
	@Min(value = 100, message = "Enter a Valid Id")
	@Max(value = 199, message = "Enter a Valid Id")
	private int staffId ;
	@Column(name="visited_date")
	@NotNull(message="Correct date format is required ")
	private Date visitedDate ;
	@Column(name="from_time")
	@NotNull(message="Time should is required ")
	private String fromTime ;
	@Column(name="to_time")
	@NotNull(message="Time should is required ")
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