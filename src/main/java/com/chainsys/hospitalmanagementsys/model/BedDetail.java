package com.chainsys.hospitalmanagementsys.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="BED_DETAILS")
public class BedDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "beddetails_id_ref")
	@SequenceGenerator(name = "beddetails_id_ref", sequenceName = "beddetails_id_ref", allocationSize = 1)
	@Column(name="bed_id")
	private int bedId ;
	@Column(name="bed_type")
	@Size(max = 20, min = 3, message = "*Bedstatus  should be 3 to 20")
	private String bedType ;
	
	@Column(name="BED_BOOKEDTIME")
	private String bedBookedTime;
	@Column(name="bed_status")
	@Size(max = 20, min = 3, message = "*Bedstatus  should be 3 to 20")
	private String bedStatus ;
	@Column(name="bed_size")
	@Size(max = 20, min = 3, message = "*Bedsize should be 3 to 20")
	private String bedSize ;
	@Column(name="room_id")
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
	public String getBedBookedTime() {
		return bedBookedTime;
	}
	public void setBedBookedTime() {
			 Calendar vCalendar = Calendar.getInstance();
		        String bedBookedTime = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
		                + vCalendar.get(Calendar.YEAR) + " : " + vCalendar.get(Calendar.HOUR) + " : "
		                + vCalendar.get(Calendar.MINUTE);
		        this.bedBookedTime = bedBookedTime;
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