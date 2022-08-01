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
	BookingCancellationDetailService bcservice;

	@GetMapping("/list")

	public String getAllBookingCancellationDetails(Model model) {
		List<BookingCancellationDetail> bc = bcservice.getAllBookingCancellationDetails();
		model.addAttribute("allbc", bc);
		return "list-bcdetail";
	}

	@GetMapping("/getbc")
	public String getBookingCancellation(@RequestParam("id") int id, Model model) {
		BookingCancellationDetail bc = bcservice.findById(id);
		model.addAttribute("getbcdetail", bc);
		return "find-bc-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		BookingCancellationDetail bc = new BookingCancellationDetail();
		model.addAttribute("addbc", bc);
		return "add-bc-form";
	}

	@PostMapping("/add")
	public String addNewBookingCancellation(@ModelAttribute("addbc") BookingCancellationDetail bc) {
		bcservice.save(bc);
		return "redirect:/bcdetail/list";
	}

	@GetMapping("/deletebc")
	public String deleteAmbulance(@RequestParam("bc_id") int id) {
		bcservice.deleteById(id);
		return "redirect:/bcdetail/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("bc_id") int id, Model model) {
		BookingCancellationDetail bc = bcservice.findById(id);
		model.addAttribute("updatebc", bc);
		return "update-bc-form";
	}

	@PostMapping("updatebcdetail")
	public String updateBookingCancellationDetail(@ModelAttribute("updatebc") BookingCancellationDetail bc) {
		bcservice.save(bc);
		return "redirect:/bcdetail/list";
	}
}
