package com.chainsys.hospitalmanagementsys.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ROOM_DETAILS")
public class RoomDetail {
	@Id
	private int room_id ;
	private String room_type ;
	private String room_location ;
	private int numof_beds;
	private String room_status ;
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getRoom_location() {
		return room_location;
	}
	public void setRoom_location(String room_location) {
		this.room_location = room_location;
	}
	public int getNumof_beds() {
		return numof_beds;
	}
	public void setNumof_beds(int numof_beds) {
		this.numof_beds = numof_beds;
	}
	public String getRoom_status() {
		return room_status;
	}
	public void setRoom_status(String room_status) {
		this.room_status = room_status;
	}
}
