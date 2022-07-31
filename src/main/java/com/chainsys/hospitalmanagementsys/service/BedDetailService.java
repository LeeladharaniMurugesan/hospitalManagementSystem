package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.BedDetail;
import com.chainsys.hospitalmanagementsys.repository.BedDetailRepository;

@Service
public class BedDetailService {
	@Autowired

	BedDetailRepository rpps;

	public List<BedDetail> getAllBedDetails() {
		List<BedDetail> bd = rpps.findAll();
		return bd;
	}

	public BedDetail save(BedDetail bd) {
		return rpps.save(bd);
	}

	public BedDetail findById(int id) {
		return rpps.findById(id);
	}

	public void deleteById(int id) {
		rpps.deleteById(id);
	}
}

