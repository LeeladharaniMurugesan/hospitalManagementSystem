package com.chainsys.hospitalmanagementsys.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.dto.StaffDoctorDTO;
import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorDetailRepository;
import com.chainsys.hospitalmanagementsys.repository.StaffDetailRepository;


@Service
public class StaffDetailService {
	@Autowired
	StaffDetailRepository staffDetailRepository;
	@Autowired
	DoctorDetailRepository doctordetailRepository;
	public List<StaffDetail> getStaffDetails() {
		List<StaffDetail> staffDetail = staffDetailRepository.findAll();
		return staffDetail;
	}

	public StaffDetail save(StaffDetail staffDetail) {
		return staffDetailRepository.save(staffDetail);
	}

	public StaffDetail findById(int id) {
		return staffDetailRepository.findById(id);
	}

	public void deleteById(int id) {
		staffDetailRepository.deleteById(id);
	}
	public StaffDoctorDTO getStaffDoctorDetail(int id) {
		StaffDetail staffDetail =findById(id);
		StaffDoctorDTO dto =new StaffDoctorDTO();
		dto.setStaffdetail(staffDetail);
		List<DoctorDetail> doctordetails = doctordetailRepository.findByStaffId(id);
		Iterator<DoctorDetail> itr =doctordetails.iterator();
		while(itr.hasNext()) {
			dto.addDoclist((DoctorDetail)itr.next());
		}
		return dto;
		}
	}
