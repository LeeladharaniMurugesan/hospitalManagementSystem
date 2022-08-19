package com.chainsys.hospitalmanagementsys.model;


import java.sql.Date;

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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Range;


@Entity
@Table(name = "DOCTOR_VISITDETAILS")
public class DoctorVisitDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "doctorvisit_id_ref")
	@SequenceGenerator(name = "doctorvisit_id_ref", sequenceName = "doctorvisit_id_ref", allocationSize = 1)
	@Column(name = "s_no")
	private int sNo;
	@Column(name = "staff_id")
	@NotNull
	private int staffId;
	@Column(name = "visited_date")
	@Past
	private Date visitedDate;
	@Column(name = "from_time")
	private String fromTime;
	@Column(name = "to_time")
	private String toTime;
	@Column(name = "dailyfees")
	@Range(min = (int) 100.0)
	private int dailyFees;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "staff_id", nullable = false, insertable = false, updatable = false)
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


	public String getToTime() {
		return toTime;
	}

	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
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