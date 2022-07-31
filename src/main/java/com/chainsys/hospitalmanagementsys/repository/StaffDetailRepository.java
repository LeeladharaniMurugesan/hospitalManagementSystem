package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.pojo.StaffDetail;


public interface StaffDetailRepository extends CrudRepository<StaffDetail, Integer> {
	StaffDetail findById(int id);

	StaffDetail save(StaffDetail sd);

	void deleteById(int id);

	List<StaffDetail> findAll();
}