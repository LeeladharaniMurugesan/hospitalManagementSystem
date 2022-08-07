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
@Entity
@Table(name="BOOKINGCANCELLATION_DETAILS")
public class BookingCancellationDetail {
	@Id
	@Column(name="bc_id")
	@Min(value = 1101, message = "Enter a Valid Id")
	@Max(value = 1200, message = "Enter a Valid Id")
	private int bcId ;
	@Column(name="booking_date")
	@NotNull(message="Correct date format is required ")
	private Date bookingDate ;
	@Column(name="fromdate")
	@NotNull(message="Correct date format is required ")
	private Date fromDate;
	@Column(name="todate")
	@NotNull(message="Correct date format is required ")
	private Date toDate ;
	@Column(name="resource_type")
	private String resourceType;
	@Column(name="resource_id")
	@NotNull(message="ResourceId should is required ")
	private String resourceId;
	@Column(name="staff_id")
	@Min(value = 100, message = "Enter a Valid Id")
	@Max(value = 199, message = "Enter a Valid Id")
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
	public String getResourceId() {
		return resourceId;
	}
	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	
	
	
}
