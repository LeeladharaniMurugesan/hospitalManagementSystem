package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.BedDetail;
import com.chainsys.hospitalmanagementsys.repository.BedDetailRepository;

@Service
public class BedDetailService {
	@Autowired

	BedDetailRepository beddetail;

	public List<BedDetail> getAllBedDetails() {
		List<BedDetail> bd = beddetail.findAll();
		return bd;
	}

	public BedDetail save(BedDetail bd) {
		return beddetail.save(bd);
	}

	public BedDetail findById(int id) {
		return beddetail.findById(id);
	}

	public void deleteById(int id) {
		beddetail.deleteById(id);
	}
}

