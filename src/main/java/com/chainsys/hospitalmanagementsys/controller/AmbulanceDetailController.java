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

import com.chainsys.hospitalmanagementsys.pojo.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.service.AmbulanceDetailService;

@Controller
@RequestMapping("/ambulance")
public class AmbulanceDetailController {
	@Autowired
	AmbulanceDetailService ambservice;

	@GetMapping("/list")

	public String getAllAmbulanceDetails(Model model) {
		List<AmbulanceDetail> ad = ambservice.getAllAmbulanceDetails();
		model.addAttribute("allambulance", ad);
		return "list-ambulance";
	}

	@GetMapping("/getambulance")
	public String getAmbulance(@RequestParam("id") int id, Model model) {
		AmbulanceDetail ad = ambservice.findById(id);
		model.addAttribute("getdoc", ad);
		return "find-ambulance-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		AmbulanceDetail ad = new AmbulanceDetail();
		model.addAttribute("addambulance", ad);
		return "add-ambulance-form";
	}

	@PostMapping("/add")
	public String addNewAmbulance(@ModelAttribute("addambulance") AmbulanceDetail ad) {
		ambservice.save(ad);
		return "redirect:/ambulance/list";
	}

	@GetMapping("/deletedoc")
	public String deleteAmbulance(@RequestParam("register_id") int id) {
		ambservice.deleteById(id);
		return "redirect:/ambulance/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("register_id") int id, Model model) {
		AmbulanceDetail ad = ambservice.findById(id);
		model.addAttribute("updateamb", ad);
		return "update-ambulance-form";
	}

	@PostMapping("updateambulance")
	public String updateAmbulance(@ModelAttribute("updateamb") AmbulanceDetail ad) {
		ambservice.save(ad);
		return "redirect:/ambulance/list";
	}
}
