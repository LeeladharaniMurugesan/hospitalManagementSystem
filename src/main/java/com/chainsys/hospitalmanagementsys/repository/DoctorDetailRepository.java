package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface DoctorDetailRepository extends CrudRepository<DoctorDetailRepository, Integer> {
	DoctorDetailRepository findById(int id);

	DoctorDetailRepository save(DoctorDetailRepository dd);

	void deleteById(int id);

	List<DoctorDetailRepository> findAll();
}
