package com.chainsys.hospitalmanagementsys.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="BED_DETAILS")
public class BedDetail {
	@Id
	@Column(name="bed_id")
	@Min(value = 1, message = "Enter a Valid Id")
	@Max(value = 100, message = "Enter a Valid Id")
	private int bedId ;
	@Column(name="bed_type")
	@Size(max = 20, min = 3, message = "*BedType should be 3 to 20")
	@NotBlank(message = "*BedType is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid BedType ")
	private String bedType ;
	@Column(name="bed_status")
	@Size(max = 20, min = 3, message = "*Bedstatus  should be 3 to 20")
	@NotBlank(message = "*BedStatus is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Bedstatus ")
	private String bedStatus ;
	@Column(name="bed_size")
	@Size(max = 20, min = 3, message = "*Bedsize should be 3 to 20")
	@NotBlank(message = "*BedSize is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Bedsize ")
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