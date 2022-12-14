package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.BedDetail;

public interface BedDetailRepository extends CrudRepository<BedDetail, Integer> {
	BedDetail findById(int id);

	BedDetail save(BedDetail beddetail);

	void deleteById(int id);

	List<BedDetail> findAll();
	
	List<BedDetail> findByRoomId(int id);
}
