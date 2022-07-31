package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface OperationTheatreDetailRepository extends CrudRepository<OperationTheatreDetailRepository, Integer> {
	OperationTheatreDetailRepository findById(int id);

	OperationTheatreDetailRepository save(OperationTheatreDetailRepository otd);

	void deleteById(int id);

	List<OperationTheatreDetailRepository> findAll();
}
