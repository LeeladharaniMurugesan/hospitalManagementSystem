package com.chainsys.hospitalmanagementsys.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="OPERATIONTHEATRE_DETAILS")
public class OperationTheatreDetail {
	@Id
	@Column(name="theatre_id")
	@Min(value = 1, message = "Enter a Valid Id")
	@Max(value = 100, message = "Enter a Valid Id")
	private int theatreId; 
	@Column(name="theatre_type")
	@NotNull(message="Theatretype is required")
	private String theatreType ;
	@Column(name="theatre_location")
	@NotNull(message="Theatrelocation is required")
	private String theatreLocation;
	@Column(name="theatre_status")
	@NotNull(message="Theatrestatus is required")
	private String theatreStatus;
	public int getTheatreId() {
		return theatreId;
	}
	public void setTheatreId(int theatreId) {
		this.theatreId = theatreId;
	}
	public String getTheatreType() {
		return theatreType;
	}
	public void setTheatreType(String theatreType) {
		this.theatreType = theatreType;
	}
	public String getTheatreLocation() {
		return theatreLocation;
	}
	public void setTheatreLocation(String theatreLocation) {
		this.theatreLocation = theatreLocation;
	}
	public String getTheatreStatus() {
		return theatreStatus;
	}
	public void setTheatreStatus(String theatreStatus) {
		this.theatreStatus = theatreStatus;
	}
}	