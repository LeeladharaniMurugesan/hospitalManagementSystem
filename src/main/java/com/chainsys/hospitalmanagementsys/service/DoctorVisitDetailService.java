package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorVisitDetailRepository;

@Service
public class DoctorVisitDetailService {
	@Autowired

	DoctorVisitDetailRepository rpstr;

	public List<DoctorVisitDetail> getAllDoctorVisitDetails() {
		List<DoctorVisitDetail> dvd = rpstr.findAll();
		return dvd;
	}

	public DoctorVisitDetail save(DoctorVisitDetail dvd) {
		return rpstr.save(dvd);
	}

	public DoctorVisitDetail findById(int id) {
		return rpstr.findById(id);
	}

	public void deleteById(int id) {
		rpstr.deleteById(id);
	}
}

