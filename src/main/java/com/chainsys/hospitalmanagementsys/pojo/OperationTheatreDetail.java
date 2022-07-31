package com.chainsys.hospitalmanagementsys.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="operationTheatre_details")
public class OperationTheatreDetail {
	@Id
	private int theatre_id; 
	private String theatre_type ;
	private String theatre_location;
	private String theatre_status;
	public int getTheatre_id() {
		return theatre_id;
	}
	public void setTheatre_id(int theatre_id) {
		this.theatre_id = theatre_id;
	}
	public String getTheatre_type() {
		return theatre_type;
	}
	public void setTheatre_type(String theatre_type) {
		this.theatre_type = theatre_type;
	}
	public String getTheatre_location() {
		return theatre_location;
	}
	public void setTheatre_location(String theatre_location) {
		this.theatre_location = theatre_location;
	}
	public String getTheatre_status() {
		return theatre_status;
	}
	public void setTheatre_status(String theatre_status) {
		this.theatre_status = theatre_status;
	} 
}
