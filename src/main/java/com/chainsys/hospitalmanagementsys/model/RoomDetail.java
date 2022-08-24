package com.chainsys.hospitalmanagementsys.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="ROOM_DETAILS")
public class RoomDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "room_id_ref")
	@SequenceGenerator(name = "room_id_ref", sequenceName = "room_id_ref", allocationSize = 1)
	@Column(name="room_id")
	private int roomId ;
	@Column(name="room_type")
	private String roomType ;
	@Column(name="room_location")
	@NotBlank(message = "*RoomLocation is required")
	private String roomLocation ;
	@Column(name="numof_beds")
	@Min(value = 200, message = "Enter a Valid number of beds")
	@Max(value = 300, message = "Enter a Valid number of beds")
	@NotNull(message = "Number of beds must be required")
	private int numOfBeds;
	@Column(name="room_status")
	@NotNull(message = "RoomStatus must be required")
	private String roomStatus;
	@OneToMany(mappedBy="roomdetails",fetch=FetchType.LAZY)
    private List<BedDetail> beddetails;
	
	public List<BedDetail> getBeddetails() {
		return beddetails;
	}
	public void setBeddetails(List<BedDetail> beddetails) {
		this.beddetails = beddetails;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getRoomLocation() {
		return roomLocation;
	}
	public void setRoomLocation(String roomLocation) {
		this.roomLocation = roomLocation;
	}
	public int getNumOfBeds() {
		return numOfBeds;
	}
	public void setNumOfBeds(int numOfBeds) {
		this.numOfBeds = numOfBeds;
	}
	public String getRoomStatus() {
		return roomStatus;
	}
	public void setRoomStatus(String roomStatus) {
		this.roomStatus = roomStatus;
	}
	
}	