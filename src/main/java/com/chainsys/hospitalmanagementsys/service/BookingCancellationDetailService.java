package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.repository.BookingCancellationDetailRepository;

@Service
public class BookingCancellationDetailService {
	@Autowired

	BookingCancellationDetailRepository bookingCancellationRepository;

	public List<BookingCancellationDetail> getAllBookingCancellationDetails() {
		return bookingCancellationRepository.findAll();
	}

	public BookingCancellationDetail save(BookingCancellationDetail bookcancel) {
		return bookingCancellationRepository.save(bookcancel);
	}

	public BookingCancellationDetail findById(int id) {
		return bookingCancellationRepository.findById(id);
	}

	public void deleteById(int id) {
		bookingCancellationRepository.deleteById(id);
	}
}

