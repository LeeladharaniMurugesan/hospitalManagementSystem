package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.repository.AmbulanceDetailRepository;

@Service
public class AmbulanceDetailService {
	@Autowired

	AmbulanceDetailRepository rp;

	public List<AmbulanceDetail> getAllAmbulanceDetails() {
		List<AmbulanceDetail> ad = rp.findAll();
		return ad;
	}

	public AmbulanceDetail save(AmbulanceDetail ad) {
		return rp.save(ad);
	}

	public AmbulanceDetail findById(int id) {
		return rp.findById(id);
	}

	public void deleteById(int id) {
		rp.deleteById(id);
	}
}

