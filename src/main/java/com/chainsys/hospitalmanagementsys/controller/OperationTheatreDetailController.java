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

import com.chainsys.hospitalmanagementsys.model.OperationTheatreDetail;
import com.chainsys.hospitalmanagementsys.service.OperationTheatreDetailService;

@Controller
@RequestMapping("/operationTheatre")
public class OperationTheatreDetailController {
	@Autowired
	OperationTheatreDetailService optservice;

	@GetMapping("/list")

	public String getAllOperationTheatreDetails(Model model) {
		List<OperationTheatreDetail> ot = optservice.getAllOperationTheatreDetails();
		model.addAttribute("alloperationTheatre", ot);
		return "list-operationTheatre";
	}

	@GetMapping("/getoperationtheatre")
	public String getOperationTheatre(@RequestParam("id") int id, Model model) {
		OperationTheatreDetail ot = optservice.findById(id);
		model.addAttribute("getOperationTheatre", ot);
		return "find-otd-id-form";
	}

	@GetMapping("/addoperationtheatreform")
	public String showAddOperationTheatreForm(Model model) {
		OperationTheatreDetail ot = new OperationTheatreDetail();
		model.addAttribute("addOperationTheatre", ot);
		return "add-otd-form";
	}

	@PostMapping("/addoperationtheatre")
	public String addNewOperationTheatre(@ModelAttribute("addOperationTheatre") OperationTheatreDetail ot) {
		optservice.save(ot);
		return "redirect:/operationTheatre/list";
	}

	@GetMapping("/deleteoperationtheatre")
	public String deleteOperationTheatre(@RequestParam("theatreId") int id) {
		optservice.deleteById(id);
		return "redirect:/operationTheatre/list";
	}

	@GetMapping("/updateoperationtheatreform")
	public String showUpdateOperationTheatreForm(@RequestParam("theatreId") int id, Model model) {
		OperationTheatreDetail ot = optservice.findById(id);
		model.addAttribute("updateOperationTheatre", ot);
		return "update-otd-form";
	}

	@PostMapping("updateopeartiontheatre")
	public String updateOperationTheatre(@ModelAttribute("updateOperationTheatre") OperationTheatreDetail ot) {
		optservice.save(ot);
		return "redirect:/operationTheatre/list";
	}
}
