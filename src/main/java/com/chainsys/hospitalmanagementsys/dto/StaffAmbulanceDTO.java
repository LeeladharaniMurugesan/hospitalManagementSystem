package com.chainsys.hospitalmanagementsys.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;

public class StaffAmbulanceDTO {
	@Autowired
	private StaffDetail staffambulancedetails;
	private List<AmbulanceDetail> ambulancedetail = new ArrayList<AmbulanceDetail>();

	public StaffDetail getStaffambulancedetails() {
		return staffambulancedetails;
	}

	public void setStaffambulancedetails(StaffDetail staffambulancedetails) {
		this.staffambulancedetails = staffambulancedetails;
	}

	public List<AmbulanceDetail> getAmbulancedetail() {
		return ambulancedetail;
	}
	public void addambulancelist(AmbulanceDetail ambulancelist) {
		ambulancedetail.add(ambulancelist);
	}


}