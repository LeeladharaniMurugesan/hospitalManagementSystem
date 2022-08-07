package com.chainsys.hospitalmanagementsys.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="BED_DETAILS")
public class BedDetail {
	@Id
	@Column(name="bed_id")
	@Min(value = 1, message = "Enter a Valid Id")
	@Max(value = 100, message = "Enter a Valid Id")
	private int bedId ;
	@Column(name="bed_type")
	@NotNull(message="BedType must be required")
	private String bedType ;
	@Column(name="bed_status")
	@NotNull(message="BedStatus must be required")
	private String bedStatus ;
	@Column(name="bed_size")
	@NotNull(message="BedSize must be required")
	private String bedSize ;
	@Column(name="room_id")
	@Min(value = 1, message = "Enter a Valid Id")
	@Max(value = 100, message = "Enter a Valid Id")
	private int roomId;
	@ManyToOne
    @JoinColumn(name="room_id",nullable = false, insertable = false,updatable = false)
     
    private RoomDetail roomdetails; 
	public RoomDetail getRoomdetails() {
		return roomdetails;
	}
	public void setRoomdetails(RoomDetail roomdetails) {
		this.roomdetails = roomdetails;
	}
	public int getBedId() {
		return bedId;
	}
	public void setBedId(int bedId) {
		this.bedId = bedId;
	}
	public String getBedType() {
		return bedType;
	}
	public void setBedType(String bedType) {
		this.bedType = bedType;
	}
	public String getBedStatus() {
		return bedStatus;
	}
	public void setBedStatus(String bedStatus) {
		this.bedStatus = bedStatus;
	}
	public String getBedSize() {
		return bedSize;
	}
	public void setBedSize(String bedSize) {
		this.bedSize = bedSize;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
}