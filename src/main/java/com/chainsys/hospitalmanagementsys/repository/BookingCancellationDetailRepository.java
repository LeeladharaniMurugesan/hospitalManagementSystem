package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface BookingCancellationDetailRepository extends CrudRepository<BookingCancellationDetailRepository, Integer> {
	BookingCancellationDetailRepository findById(int id);

	BookingCancellationDetailRepository save(BookingCancellationDetailRepository sd);

	void deleteById(int id);

	List<BookingCancellationDetailRepository> findAll();
}
