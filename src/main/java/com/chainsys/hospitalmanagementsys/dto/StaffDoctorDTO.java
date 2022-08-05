package com.chainsys.hospitalmanagementsys.dto;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;

public class StaffDoctorDTO {
    @Autowired
    private StaffDetail staffdetail;
    private DoctorDetail doclist;
	public StaffDetail getStaffdetail() {
		return staffdetail;
	}
	public void setStaffdetail(StaffDetail staffdetail) {
		this.staffdetail = staffdetail;
	}
	public DoctorDetail getDoclist() {
		return doclist;
	}
	public void setDoclist(DoctorDetail doclist) {
		this.doclist = doclist;
	}
	    
}