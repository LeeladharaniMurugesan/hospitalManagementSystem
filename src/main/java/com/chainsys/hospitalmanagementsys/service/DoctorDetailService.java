package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.DoctorDetail;
import com.chainsys.hospitalmanagementsys.repository.DoctorDetailRepository;

@Service
public class DoctorDetailService {
	@Autowired

	DoctorDetailRepository rps;

	public List<DoctorDetail> getAllDoctorDetails() {
		List<DoctorDetail> dd = rps.findAll();
		return dd;
	}

	public DoctorDetail save(DoctorDetail dd) {
		return rps.save(dd);
	}

	public DoctorDetail findById(int id) {
		return rps.findById(id);
	}

	public void deleteById(int id) {
		rps.deleteById(id);
	}
}

