package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface DoctorVisitDetailRepository extends CrudRepository<DoctorVisitDetailRepository, Integer> {
	DoctorVisitDetailRepository findById(int id);

	DoctorVisitDetailRepository save(DoctorVisitDetailRepository sd);

	void deleteById(int id);

	List<DoctorVisitDetailRepository> findAll();
}

