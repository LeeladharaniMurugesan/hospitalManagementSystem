package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorVisitDetailRepository;

@Service
public class DoctorVisitDetailService {
	@Autowired

	DoctorVisitDetailRepository doctorvisit;

	public List<DoctorVisitDetail> getAllDoctorVisitDetails() {
		List<DoctorVisitDetail> dvd = doctorvisit.findAll();
		return dvd;
	}

	public DoctorVisitDetail save(DoctorVisitDetail dvd) {
		return doctorvisit.save(dvd);
	}

	public DoctorVisitDetail findById(int id) {
		return doctorvisit.findById(id);
	}

	public void deleteById(int id) {
		doctorvisit.deleteById(id);
	}
}

