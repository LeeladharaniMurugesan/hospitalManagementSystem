package com.chainsys.hospitalmanagementsys.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.repository.AmbulanceDetailRepository;

@Service
public class AmbulanceDetailService {
	@Autowired

	AmbulanceDetailRepository ambulanceDetailRepository;

	public List<AmbulanceDetail> getAllAmbulanceDetails() {
		return ambulanceDetailRepository.findAll();
	}

	public AmbulanceDetail save(AmbulanceDetail ambulancedetail) {
		return ambulanceDetailRepository.save(ambulancedetail);
	}

	public Optional<AmbulanceDetail> findById(int id) {
		return ambulanceDetailRepository.findById(id);
	}

	public void deleteById(int id) {
		ambulanceDetailRepository.deleteById(id);
	}
}

