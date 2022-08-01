package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.OperationTheatreDetail;
import com.chainsys.hospitalmanagementsys.repository.OperationTheatreDetailRepository;

@Service
public class OperationTheatreDetailService {
	@Autowired

	OperationTheatreDetailRepository operationtheatre;

	public List<OperationTheatreDetail> getAllOperationTheatreDetails() {
		List<OperationTheatreDetail> opt = operationtheatre.findAll();
		return opt;
	}

	public OperationTheatreDetail save(OperationTheatreDetail ot) {
		return operationtheatre.save(ot);
	}

	public OperationTheatreDetail findById(int id) {
		return operationtheatre.findById(id);
	}

	public void deleteById(int id) {
		operationtheatre.deleteById(id);
	}
}
