package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;

public interface AmbulanceDetailRepository extends CrudRepository<AmbulanceDetail, String> {
	Optional<AmbulanceDetail> findById(String id);

	AmbulanceDetail save(AmbulanceDetail ambulancedetail);

	void deleteById(String id);

	List<AmbulanceDetail> findAll();
	
	List<AmbulanceDetail> findByStaffId(int id);
}
