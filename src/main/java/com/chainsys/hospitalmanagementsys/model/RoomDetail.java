package com.chainsys.hospitalmanagementsys.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ROOM_DETAILS")
public class RoomDetail {
	@Id
	@Column(name="room_id")
	private int roomId ;
	@Column(name="room_type")
	private String roomType ;
	@Column(name="room_location")
	private String roomLocation ;
	@Column(name="numof_beds")
	private int numOfBeds;
	@Column(name="room_status")
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