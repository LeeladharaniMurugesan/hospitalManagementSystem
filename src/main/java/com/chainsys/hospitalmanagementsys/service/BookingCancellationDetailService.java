package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.repository.BookingCancellationDetailRepository;

@Service
public class BookingCancellationDetailService {
	@Autowired

	BookingCancellationDetailRepository rrp;

	public List<BookingCancellationDetail> getAllBookingCancellationDetails() {
		List<BookingCancellationDetail> bcd = rrp.findAll();
		return bcd;
	}

	public BookingCancellationDetail save(BookingCancellationDetail ad) {
		return rrp.save(ad);
	}

	public BookingCancellationDetail findById(int id) {
		return rrp.findById(id);
	}

	public void deleteById(int id) {
		rrp.deleteById(id);
	}
}

