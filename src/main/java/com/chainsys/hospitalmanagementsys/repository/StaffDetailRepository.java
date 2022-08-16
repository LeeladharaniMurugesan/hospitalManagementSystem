package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.StaffDetail;


public interface StaffDetailRepository extends CrudRepository<StaffDetail, Integer> {
	StaffDetail findById(int id);

	StaffDetail save(StaffDetail staffDetail);

	void deleteById(int id);

	List<StaffDetail> findAll();
	
	StaffDetail findByEmailIdAndPassword(String email, String password);
	
	@Query(value="SELECT * FROM staff_details where designation=?1",nativeQuery=true)
	public List<StaffDetail> getIdByDesignation(String designation);
}