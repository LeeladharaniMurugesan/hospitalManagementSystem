package com.chainsys.hospitalmanagementsys.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;

public interface BookingCancellationDetailRepository extends CrudRepository<BookingCancellationDetail, Integer> {
	BookingCancellationDetail findById(int id);

	BookingCancellationDetail save(BookingCancellationDetail bookcancel);

	void deleteById(int id);

	List<BookingCancellationDetail> findAll();
	
	List<BookingCancellationDetail> findByStaffId(int id);
}
