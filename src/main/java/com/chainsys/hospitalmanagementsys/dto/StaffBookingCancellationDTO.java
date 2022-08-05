package com.chainsys.hospitalmanagementsys.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;

public class StaffBookingCancellationDTO {
	@Autowired
	private StaffDetail staffbookingcancellationdetails;
	private List<BookingCancellationDetail> bookingcancellationdetail = new ArrayList<BookingCancellationDetail>();

	public StaffDetail getStaffbookingcancellationdetails() {
		return staffbookingcancellationdetails;
	}

	public void setStaffbookingcancellationdetails(StaffDetail staffbookingcancellationdetails) {
		this.staffbookingcancellationdetails = staffbookingcancellationdetails;
	}

	public List<BookingCancellationDetail> getBookingcancellationdetail() {
		return bookingcancellationdetail;
	}

	public void addBookingCancellationlist(BookingCancellationDetail bookingcancellationlist) {
		bookingcancellationdetail.add(bookingcancellationlist);
	}

}
