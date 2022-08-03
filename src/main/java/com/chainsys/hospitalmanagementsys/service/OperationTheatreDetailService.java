package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.OperationTheatreDetail;
import com.chainsys.hospitalmanagementsys.repository.OperationTheatreDetailRepository;

@Service
public class OperationTheatreDetailService {
	@Autowired

	OperationTheatreDetailRepository operationTheatreRepository;

	public List<OperationTheatreDetail> getAllOperationTheatreDetails() {
		List<OperationTheatreDetail> operationtheatre =operationTheatreRepository.findAll();
		return operationtheatre;
	}

	public OperationTheatreDetail save(OperationTheatreDetail operationtheatre) {
		return operationTheatreRepository.save(operationtheatre);
	}

	public OperationTheatreDetail findById(int id) {
		return operationTheatreRepository.findById(id);
	}

	public void deleteById(int id) {
		operationTheatreRepository.deleteById(id);
	}
}
