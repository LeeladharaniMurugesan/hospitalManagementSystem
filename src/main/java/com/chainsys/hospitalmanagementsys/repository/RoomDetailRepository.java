package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.RoomDetail;

public interface RoomDetailRepository extends CrudRepository<RoomDetail, Integer> {
	RoomDetail findById(int id);

	RoomDetail save(RoomDetail rd);

	void deleteById(int id);

	List<RoomDetail> findAll();
}
