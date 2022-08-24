package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;

public interface AmbulanceDetailRepository extends CrudRepository<AmbulanceDetail, Integer> {
	Optional<AmbulanceDetail> findById(int id);

	AmbulanceDetail save(AmbulanceDetail ambulancedetail);

	void deleteById(int id);

	List<AmbulanceDetail> findAll();
	
	List<AmbulanceDetail> findByStaffId(int id);
}
