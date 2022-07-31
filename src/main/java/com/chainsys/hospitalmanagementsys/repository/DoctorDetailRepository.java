package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.pojo.DoctorDetail;

public interface DoctorDetailRepository extends CrudRepository<DoctorDetail, Integer> {
	DoctorDetail findById(int id);

	DoctorDetail save(DoctorDetailRepository dd);

	void deleteById(int id);

	List<DoctorDetail> findAll();
}
