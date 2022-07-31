package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.OperationTheatreDetail;
import com.chainsys.hospitalmanagementsys.repository.OperationTheatreDetailRepository;

@Service
public class OperationTheatreDetailService {
	@Autowired

	OperationTheatreDetailRepository reps;

	public List<OperationTheatreDetail> getAllOperationTheatreDetails() {
		List<OperationTheatreDetail> opt = reps.findAll();
		return opt;
	}

	public OperationTheatreDetail save(OperationTheatreDetail ot) {
		return reps.save(ot);
	}

	public OperationTheatreDetail findById(int id) {
		return reps.findById(id);
	}

	public void deleteById(int id) {
		reps.deleteById(id);
	}
}
