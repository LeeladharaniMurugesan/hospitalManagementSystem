package com.chainsys.hospitalmanagementsys.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bed_details")
public class BedDetail {
	@Id
	private int bed_id ;
	private String bed_type ;
	private String bed_status ;
	private String bed_size ;
	private int room_id;
	public int getBed_id() {
		return bed_id;
	}
	public void setBed_id(int bed_id) {
		this.bed_id = bed_id;
	}
	public String getBed_type() {
		return bed_type;
	}
	public void setBed_type(String bed_type) {
		this.bed_type = bed_type;
	}
	public String getBed_status() {
		return bed_status;
	}
	public void setBed_status(String bed_status) {
		this.bed_status = bed_status;
	}
	public String getBed_size() {
		return bed_size;
	}
	public void setBed_size(String bed_size) {
		this.bed_size = bed_size;
	}
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
}
