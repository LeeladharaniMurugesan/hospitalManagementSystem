package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;

public interface DoctorVisitDetailRepository extends CrudRepository<DoctorVisitDetail, Integer> {
	DoctorVisitDetail findById(int id);

	DoctorVisitDetail save(DoctorVisitDetail doctorvisit);

	void deleteById(int id);

	List<DoctorVisitDetail> findAll();
	
	List<DoctorVisitDetail> findByStaffId(int id);
}

