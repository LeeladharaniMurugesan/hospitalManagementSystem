package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;

public interface AmbulanceDetailRepository extends CrudRepository<AmbulanceDetail, Integer> {
	AmbulanceDetail findById(int id);

	AmbulanceDetail save(AmbulanceDetail ad);

	void deleteById(int id);

	List<AmbulanceDetail> findAll();
}
