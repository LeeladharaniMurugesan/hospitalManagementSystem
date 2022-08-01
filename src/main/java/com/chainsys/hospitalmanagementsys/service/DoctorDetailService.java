package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorDetailRepository;

@Service
public class DoctorDetailService {
	@Autowired

	DoctorDetailRepository doctordetail;

	public List<DoctorDetail> getAllDoctorDetails() {
		List<DoctorDetail> dd = doctordetail.findAll();
		return dd;
	}

	public DoctorDetail save(DoctorDetail dd) {
		return doctordetail.save(dd);
	}

	public DoctorDetail findById(int id) {
		return doctordetail.findById(id);
	}

	public void deleteById(int id) {
		doctordetail.deleteById(id);
	}
}

