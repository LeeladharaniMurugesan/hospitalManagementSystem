package com.chainsys.hospitalmanagementsys.dto;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;

public class StaffDoctorVisitDTO {
    @Autowired
    private StaffDetail staffdetails;
	private List<DoctorVisitDetail> docvisitlist=new ArrayList<DoctorVisitDetail>();
    public StaffDetail getStaffdetails() {
		return staffdetails;
	}

	public void setStaffdetails(StaffDetail staffdetails) {
		this.staffdetails = staffdetails;
	}

	public List<DoctorVisitDetail> getDocvisitlist() {
		return docvisitlist;
	}
	
	public void addDoclist(DoctorVisitDetail docvisit) {
		docvisitlist.add(docvisit);
	}
    
}