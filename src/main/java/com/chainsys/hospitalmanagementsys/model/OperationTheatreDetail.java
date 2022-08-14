package com.chainsys.hospitalmanagementsys.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
 
@Entity
@Table(name="OPERATIONTHEATRE_DETAILS")
public class OperationTheatreDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "operation_id_ref")
	@SequenceGenerator(name = "operation_id_ref", sequenceName = "operation_id_ref", allocationSize = 1)
	@Column(name="theatre_id")
	private int theatreId; 
	@Column(name="theatre_type")
	@Size(max = 20, min = 3, message = "*TheatreType length should be 3 to 20")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid TheatreType ")
	private String theatreType ;
	@Column(name="theatre_location")
	@Size(max = 20, min = 3, message = "*TheatreLocation length should be 3 to 20")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid TheatreLocation ")
	private String theatreLocation;
	@Column(name="theatre_status")
	@Size(max = 20, min = 3, message = "*TheatreStatus length should be 3 to 20")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Theatre status")
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