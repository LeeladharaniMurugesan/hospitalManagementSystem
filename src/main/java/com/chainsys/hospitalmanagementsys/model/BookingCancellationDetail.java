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
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
@Entity
@Table(name="BOOKINGCANCELLATION_DETAILS")
public class BookingCancellationDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "bookcancel_id_ref")
	@SequenceGenerator(name = "bookcancel_id_ref", sequenceName = "bookcancel_id_ref", allocationSize = 1)
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
	private String resourceId;
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
