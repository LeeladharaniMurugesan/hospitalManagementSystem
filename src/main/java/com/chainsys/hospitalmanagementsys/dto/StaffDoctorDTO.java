package com.chainsys.hospitalmanagementsys.dto;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;

public class StaffDoctorDTO {
    @Autowired
    private StaffDetail staffdetail;
    private List<DoctorDetail> doclist=new ArrayList<DoctorDetail>();
	public StaffDetail getStaffdetail() {
		return staffdetail;
	}
	public void setStaffdetail(StaffDetail staffdetail) {
		this.staffdetail = staffdetail;
	}
	public List<DoctorDetail> getDoclist() {
		return doclist;
	}
	public void addDoclist(DoctorDetail doc) {
		doclist.add(doc);
	}
    
}