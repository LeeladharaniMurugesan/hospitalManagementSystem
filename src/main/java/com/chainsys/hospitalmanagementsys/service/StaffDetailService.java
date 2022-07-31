package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.StaffDetail;
import com.chainsys.hospitalmanagementsys.repository.StaffDetailRepository;


@Service
public class StaffDetailService {
	@Autowired
	StaffDetailRepository repo;

	public List<StaffDetail> getAllStaffDetails() {
		List<StaffDetail> st = repo.findAll();
		return st;
	}

	public StaffDetail save(StaffDetail st) {
		return repo.save(st);
	}

	public StaffDetail findById(int id) {
		return repo.findById(id);
	}

	public void deleteById(int id) {
		repo.deleteById(id);
	}
}
