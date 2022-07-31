package com.chainsys.hospitalmanagementsys.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="doctor_visitdetails")
public class DoctorVisitDetail {
	@Id
	private int s_no ;
	private Date visited_date ;
	private String from_time ;
	private String to_time ;
	private String dailyfees;
	private int staff_id ;
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public Date getVisited_date() {
		return visited_date;
	}
	public void setVisited_date(Date visited_date) {
		this.visited_date = visited_date;
	}
	public String getFrom_time() {
		return from_time;
	}
	public void setFrom_time(String from_time) {
		this.from_time = from_time;
	}
	public String getTo_time() {
		return to_time;
	}
	public void setTo_time(String to_time) {
		this.to_time = to_time;
	}
	public String getDailyfees() {
		return dailyfees;
	}
	public void setDailyfees(String dailyfees) {
		this.dailyfees = dailyfees;
	}
	public int getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
}
