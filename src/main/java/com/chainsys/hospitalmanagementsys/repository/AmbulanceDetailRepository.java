package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface AmbulanceDetailRepository extends CrudRepository<AmbulanceDetailRepository, Integer> {
	AmbulanceDetailRepository findById(int id);

	AmbulanceDetailRepository save(AmbulanceDetailRepository sd);

	void deleteById(int id);

	List<AmbulanceDetailRepository> findAll();
}
