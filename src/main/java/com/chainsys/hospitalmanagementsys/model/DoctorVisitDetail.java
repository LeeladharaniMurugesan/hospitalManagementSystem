package com.chainsys.hospitalmanagementsys.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="DOCTOR_VISITDETAILS")
public class DoctorVisitDetail {
	@Id
	@Column(name="s_no")
	private int sNo ;
	@Column(name="staff_id")
	private int staffId ;
	@Column(name="visited_date")
	private Date visitedDate ;
	@Column(name="from_time")
	private String fromTime ;
	@Column(name="to_time")
	private String toTime ;
	@Column(name="dailyfees")
	private String dailyFees;
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
	public String getDailyFees() {
		return dailyFees;
	}
	public void setDailyFees(String dailyFees) {
		this.dailyFees = dailyFees;
	}
	
}	
	