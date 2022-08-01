package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.repository.BookingCancellationDetailRepository;

@Service
public class BookingCancellationDetailService {
	@Autowired

	BookingCancellationDetailRepository bookingcancellation;

	public List<BookingCancellationDetail> getAllBookingCancellationDetails() {
		List<BookingCancellationDetail> bcd = bookingcancellation.findAll();
		return bcd;
	}

	public BookingCancellationDetail save(BookingCancellationDetail ad) {
		return bookingcancellation.save(ad);
	}

	public BookingCancellationDetail findById(int id) {
		return bookingcancellation.findById(id);
	}

	public void deleteById(int id) {
		bookingcancellation.deleteById(id);
	}
}

