package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.StaffDetail;


public interface StaffDetailRepository extends CrudRepository<StaffDetail, Integer> {
	StaffDetail findById(int id);

	StaffDetail save(StaffDetail staffDetail);

	void deleteById(int id);

	List<StaffDetail> findAll();
	
	StaffDetail findByEmailIdAndPassword(String email, String password);

}