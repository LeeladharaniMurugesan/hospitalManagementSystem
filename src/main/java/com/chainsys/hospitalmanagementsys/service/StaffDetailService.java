package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.repository.StaffDetailRepository;


@Service
public class StaffDetailService {
	@Autowired
	StaffDetailRepository staffdetail;

	public List<StaffDetail> getAllStaffDetails() {
		List<StaffDetail> st = staffdetail.findAll();
		return st;
	}

	public StaffDetail save(StaffDetail st) {
		return staffdetail.save(st);
	}

	public StaffDetail findById(int id) {
		return staffdetail.findById(id);
	}

	public void deleteById(int id) {
		staffdetail.deleteById(id);
	}
}
