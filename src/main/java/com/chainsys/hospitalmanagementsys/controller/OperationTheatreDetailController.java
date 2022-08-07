package com.chainsys.hospitalmanagementsys.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.hospitalmanagementsys.model.OperationTheatreDetail;
import com.chainsys.hospitalmanagementsys.service.OperationTheatreDetailService;

@Controller
@RequestMapping("/operationTheatre")
public class OperationTheatreDetailController {
	@Autowired
	OperationTheatreDetailService operationtheatreservice;

	@GetMapping("/list")

	public String getAllOperationTheatreDetails(Model model) {
		List<OperationTheatreDetail> operationtheatre = operationtheatreservice.getAllOperationTheatreDetails();
		model.addAttribute("alloperationtheatre", operationtheatre);
		return "list-operationTheatre";
	}

	@GetMapping("/getoperationtheatre")
	public String getOperationTheatre(@Valid@RequestParam("id") int id, Model model) {
		OperationTheatreDetail operationtheatre = operationtheatreservice.findById(id);
		model.addAttribute("getoperationtheatres", operationtheatre);
		return "find-otd-id-form";
	}

	@GetMapping("/addoperationtheatreform")
	public String showAddOperationTheatreForm(Model model) {
		OperationTheatreDetail operationtheatre = new OperationTheatreDetail();
		model.addAttribute("addoperationtheatre", operationtheatre);
		return "add-otd-form";
	}

	@PostMapping("/addoperationtheatre")
	public String addNewOperationTheatre(@ModelAttribute("addoperationtheatre") OperationTheatreDetail operationtheatre) {
		operationtheatreservice.save(operationtheatre);
		return "redirect:/operationTheatre/list";
	}

	@GetMapping("/deleteoperationtheatre")
	public String deleteOperationTheatre(@Valid@RequestParam("theatreId") int id) {
		operationtheatreservice.deleteById(id);
		return "redirect:/operationTheatre/list";
	}

	@GetMapping("/updateoperationtheatreform")
	public String showUpdateOperationTheatreForm(@Valid@RequestParam("theatreId") int id, Model model) {
		OperationTheatreDetail operationtheatre = operationtheatreservice.findById(id);
		model.addAttribute("updateoperationtheatres", operationtheatre);
		return "update-otd-form";
	}

	@PostMapping("updateopeartiontheatre")
	public String updateOperationTheatre(@ModelAttribute("updateoperationtheatres") OperationTheatreDetail operationtheatre) {
		operationtheatreservice.save(operationtheatre);
		return "redirect:/operationTheatre/list";
	}
}
