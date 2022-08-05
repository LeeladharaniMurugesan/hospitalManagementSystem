package com.chainsys.hospitalmanagementsys.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="BOOKINGCANCELLATION_DETAILS")
public class BookingCancellationDetail {
	@Id
	@Column(name="bc_id")
	private int bcId ;
	@Column(name="booking_date")
	private Date bookingDate ;
	@Column(name="fromdate")
	private Date fromDate;
	@Column(name="todate")
	private Date toDate ;
	@Column(name="resource_type")
	private String resourceType;
	@Column(name="resource_id")
	private int resourceId;
	@Column(name="staff_id")
	private int staffId;
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="staff_id" , nullable=false,insertable=false,updatable=false)
    private StaffDetail staffbookingcancellationdetails;
	public StaffDetail getStaffbookingcancellationdetails() {
		return staffbookingcancellationdetails;
	}
	public void setStaffbookingcancellationdetails(StaffDetail staffbookingcancellationdetails) {
		this.staffbookingcancellationdetails = staffbookingcancellationdetails;
	}
	public int getBcId() {
		return bcId;
	}
	public void setBcId(int bcId) {
		this.bcId = bcId;
	}
	public Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	public String getResourceType() {
		return resourceType;
	}
	public void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}
	public int getResourceId() {
		return resourceId;
	}
	public void setResourceId(int resourceId) {
		this.resourceId = resourceId;
	}
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	
	
	
}
