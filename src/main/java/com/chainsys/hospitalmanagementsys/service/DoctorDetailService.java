package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorDetailRepository;

@Service
public class DoctorDetailService {
	@Autowired

	DoctorDetailRepository doctorDetailRepository;

	public List<DoctorDetail> getAllDoctorDetails() {
		List<DoctorDetail> doctordetail = doctorDetailRepository.findAll();
		return doctordetail;
	}

	public DoctorDetail save(DoctorDetail doctordetail) {
		return doctorDetailRepository.save(doctordetail);
	}

	public DoctorDetail findById(int id) {
		return doctorDetailRepository.findById(id);
	}

	public void deleteById(int id) {
		doctorDetailRepository.deleteById(id);
	}
}

