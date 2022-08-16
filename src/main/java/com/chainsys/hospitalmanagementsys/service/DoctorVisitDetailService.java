package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorVisitDetailRepository;

@Service
public class DoctorVisitDetailService {
	@Autowired

	DoctorVisitDetailRepository doctorVisitRepository;

	public List<DoctorVisitDetail> getAllDoctorVisitDetails() {
		return doctorVisitRepository.findAll();
	}

	public DoctorVisitDetail save(DoctorVisitDetail doctorvisit) {
		return doctorVisitRepository.save(doctorvisit);
	}

	public DoctorVisitDetail findById(int id) {
		return doctorVisitRepository.findById(id);
	}

	public void deleteById(int id) {
		doctorVisitRepository.deleteById(id);
	}
}

