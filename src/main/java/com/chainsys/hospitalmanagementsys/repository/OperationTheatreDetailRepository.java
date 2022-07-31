package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.pojo.OperationTheatreDetail;

public interface OperationTheatreDetailRepository extends CrudRepository<OperationTheatreDetail, Integer> {
	OperationTheatreDetail findById(int id);

	OperationTheatreDetail save(OperationTheatreDetail ot);

	void deleteById(int id);

	List<OperationTheatreDetail> findAll();
}
