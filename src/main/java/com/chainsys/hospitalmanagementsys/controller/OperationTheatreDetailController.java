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

import com.chainsys.hospitalmanagementsys.pojo.OperationTheatreDetail;
import com.chainsys.hospitalmanagementsys.service.OperationTheatreDetailService;

@Controller
@RequestMapping("/operationTheatre")
public class OperationTheatreDetailController {
	@Autowired
	OperationTheatreDetailService optservice;

	@GetMapping("/list")

	public String getAllOperationTheatreDetails(Model model) {
		List<OperationTheatreDetail> ot = optservice.getAllOperationTheatreDetails();
		model.addAttribute("allotd", ot);
		return "list-operationTheatre";
	}

	@GetMapping("/getOtd")
	public String getOperationTheatre(@RequestParam("id") int id, Model model) {
		OperationTheatreDetail ot = optservice.findById(id);
		model.addAttribute("getotd", ot);
		return "find-otd-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		OperationTheatreDetail ot = new OperationTheatreDetail();
		model.addAttribute("addotd", ot);
		return "add-otd-form";
	}

	@PostMapping("/add")
	public String addNewOperationTheatre(@ModelAttribute("addotd") OperationTheatreDetail ot) {
		optservice.save(ot);
		return "redirect:/operationTheatre/list";
	}

	@GetMapping("/deleteOtd")
	public String deleteOperationTheatre(@RequestParam("theatre_id") int id) {
		optservice.deleteById(id);
		return "redirect:/operationTheatre/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("theatre_id") int id, Model model) {
		OperationTheatreDetail ot = optservice.findById(id);
		model.addAttribute("updateotd", ot);
		return "update-otd-form";
	}

	@PostMapping("updateopt")
	public String updateOperationTheatre(@ModelAttribute("updateotd") OperationTheatreDetail ot) {
		optservice.save(ot);
		return "redirect:/operationTheatre/list";
	}
}
