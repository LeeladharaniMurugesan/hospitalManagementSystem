package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.BedDetail;
import com.chainsys.hospitalmanagementsys.repository.BedDetailRepository;

@Service
public class BedDetailService {
	@Autowired

	BedDetailRepository bedDetailRepository;

	public List<BedDetail> getAllBedDetails() {
		return bedDetailRepository.findAll();
	}

	public BedDetail save(BedDetail beddetail) {
		return bedDetailRepository.save(beddetail);
	}

	public BedDetail findById(int id) {
		return bedDetailRepository.findById(id);
	}

	public void deleteById(int id) {
		bedDetailRepository.deleteById(id);
	}
}

