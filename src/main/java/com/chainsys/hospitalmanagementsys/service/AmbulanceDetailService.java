package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.repository.AmbulanceDetailRepository;

@Service
public class AmbulanceDetailService {
	@Autowired

	AmbulanceDetailRepository ambulancedetail;

	public List<AmbulanceDetail> getAllAmbulanceDetails() {
		List<AmbulanceDetail> ad = ambulancedetail.findAll();
		return ad;
	}

	public AmbulanceDetail save(AmbulanceDetail ad) {
		return ambulancedetail.save(ad);
	}

	public AmbulanceDetail findById(int id) {
		return ambulancedetail.findById(id);
	}

	public void deleteById(int id) {
		ambulancedetail.deleteById(id);
	}
}

