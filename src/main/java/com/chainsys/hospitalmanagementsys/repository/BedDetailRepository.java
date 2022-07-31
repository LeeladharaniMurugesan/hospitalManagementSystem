package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface BedDetailRepository extends CrudRepository<BedDetailRepository, Integer> {
	BedDetailRepository findById(int id);

	BedDetailRepository save(BedDetailRepository sd);

	void deleteById(int id);

	List<BedDetailRepository> findAll();
}
