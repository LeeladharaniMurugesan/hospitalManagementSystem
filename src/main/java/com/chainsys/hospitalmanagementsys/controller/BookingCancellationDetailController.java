package com.chainsys.hospitalmanagementsys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.service.BookingCancellationDetailService;

@Controller
@RequestMapping("/bcdetail")
public class BookingCancellationDetailController {
	@Autowired
	BookingCancellationDetailService bookCancelService;

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
	public String addNewBookingCancellation(@ModelAttribute("addbookcancel") BookingCancellationDetail bookcancel) {
		bookCancelService.save(bookcancel);
		return "redirect:/bcdetail/list";
	}

	@GetMapping("/deletebc")
	public String deleteBookCancellation(@RequestParam("bcId") int id) {
		bookCancelService.deleteById(id);
		return "redirect:/bcdetail/list";
	}

	@GetMapping("/updatebcform")
	public String showUpdateBookCancellationForm(@RequestParam("bcId") int id, Model model) {
		BookingCancellationDetail bookcancel = bookCancelService.findById(id);
		model.addAttribute("updatebookcancel", bookcancel);
		return "update-bc-form";
	}

	@PostMapping("updatebcdetail")
	public String updateBookingCancellationDetail(@ModelAttribute("updatebookcancel") BookingCancellationDetail bookcancel) {
		bookCancelService.save(bookcancel);
		return "redirect:/bcdetail/list";
	}
}
