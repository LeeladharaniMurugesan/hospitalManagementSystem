package com.chainsys.hospitalmanagementsys.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.hospitalmanagementsys.dto.StaffBookingCancellationDTO;
import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.service.BookingCancellationDetailService;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/bcdetail")
public class BookingCancellationDetailController {
	@Autowired
	BookingCancellationDetailService bookCancelService;
	@Autowired
	StaffDetailService staffdetailservice;
	private static final String LIST="redirect:/bcdetail/list";
	@GetMapping("/list")

	public String getAllBookingCancellationDetails(Model model) {
		List<BookingCancellationDetail> bookcancel = bookCancelService.getAllBookingCancellationDetails();
		model.addAttribute("allbookcancel", bookcancel);
		return "list-bcdetail";
	}

	@GetMapping("/getbc")
	public String getBookingCancellation(@RequestParam("id") int id, Model model) {
		BookingCancellationDetail bookcancel = bookCancelService.findById(id);
		model.addAttribute("getbookcanceldetail", bookcancel);
		return "find-bc-id-form";
	}

	@GetMapping("/addbcform")
	public String showAddBookCancellationForm(Model model) {
		BookingCancellationDetail bookcancel = new BookingCancellationDetail();
		model.addAttribute("addbookcancel",bookcancel);
		return "add-bc-form";
	}

	@PostMapping("/addbc")
	public String addNewBookingCancellation(@Valid @ModelAttribute("addbookcancel") BookingCancellationDetail bookcancel,Errors errors) {
		if(errors.hasErrors()) {
			return "add-bc-form";
		}
		bookCancelService.save(bookcancel);
		return LIST;
	}

	@GetMapping("/deletebc")
	public String deleteBookCancellation(@Valid@RequestParam("bcId") int id) {
		bookCancelService.deleteById(id);
		return LIST;
	}

	@GetMapping("/updatebcform")
	public String showUpdateBookCancellationForm(@Valid@RequestParam("bcId") int id, Model model) {
		BookingCancellationDetail bookcancel = bookCancelService.findById(id);
		model.addAttribute("updatebookcancel", bookcancel);
		return "update-bc-form";
	}

	@PostMapping("/updatebcdetail")
	public String updateBookingCancellationDetail(@Valid @ModelAttribute("updatebookcancel") BookingCancellationDetail bookcancel,Errors errors) {
		if(errors.hasErrors()) {
			return "update-bc-form";
		}
		bookCancelService.save(bookcancel);
		return LIST;
	}
	@GetMapping("/getbookingcancellationdetail")
	public String getBookingCancellationDetail(@RequestParam("id") int id,Model model) {
		StaffBookingCancellationDTO bookingcancellationdto =staffdetailservice.getBookingCancellationDetail(id);
		model.addAttribute("getbookingcancellation",bookingcancellationdto.getStaffbookingcancellationdetails());
		model.addAttribute("bookcancellist",bookingcancellationdto.getBookingcancellationdetail());
		return "list-staff-bookingcancellation";
	}
}
