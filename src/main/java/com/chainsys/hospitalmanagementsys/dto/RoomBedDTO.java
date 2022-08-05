package com.chainsys.hospitalmanagementsys.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.hospitalmanagementsys.model.BedDetail;
import com.chainsys.hospitalmanagementsys.model.RoomDetail;

public class RoomBedDTO {
	@Autowired
	private RoomDetail roomDetails;
	private List<BedDetail> bedDetails = new ArrayList<BedDetail>();

	public RoomDetail getRoomDetails() {
		return roomDetails;
	}

	public void setRoomDetails(RoomDetail roomDetails) {
		this.roomDetails = roomDetails;
	}

	public List<BedDetail> getBedDetails() {
		return bedDetails;
	}

	public void addRoomBedlist(BedDetail roombed) {
		bedDetails.add(roombed);
	}

}
