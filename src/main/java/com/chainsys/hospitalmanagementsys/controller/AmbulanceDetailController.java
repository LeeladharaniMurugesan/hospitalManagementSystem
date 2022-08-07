package com.chainsys.hospitalmanagementsys.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.service.AmbulanceDetailService;

@Controller
@RequestMapping("/ambulance")
public class AmbulanceDetailController {
	@Autowired
	AmbulanceDetailService ambService;

	@GetMapping("/list")

	public String getAllAmbulanceDetails(Model model) {
		List<AmbulanceDetail> ambulancedetail =ambService.getAllAmbulanceDetails();
		model.addAttribute("allambulance", ambulancedetail);
		return "list-ambulance";
	}

	@GetMapping("/getambulance")
	public String getAmbulance(@Valid@RequestParam("id") String id, Model model) {
		Optional<AmbulanceDetail> ambulancedetail = ambService.findById(id);
		model.addAttribute("getambulance", ambulancedetail);
		return "find-ambulance-id-form";
	}

	@GetMapping("/addambulanceform")
	public String showAddAmbulanceForm(Model model) {
		AmbulanceDetail ambulancedetail = new AmbulanceDetail();
		model.addAttribute("addambulance", ambulancedetail);
		return "add-ambulance-form";
	}

	@PostMapping("/addambulances")
	public String addNewAmbulance(@ModelAttribute("addambulance") AmbulanceDetail ambulancedetail) {
		ambService.save(ambulancedetail);
		return "redirect:/ambulance/list";
	}

	@GetMapping("/deleteambulance")
	public String deleteAmbulance(@Valid@RequestParam("registerId") String id) {
		ambService.deleteById(id);
		return "redirect:/ambulance/list";
	}

	@GetMapping("/updateambulanceform")
	public String showUpdateForm(@Valid@RequestParam("registerId") String id, Model model) {
		Optional<AmbulanceDetail> ambulancedetail = ambService.findById(id);
		model.addAttribute("updateamb", ambulancedetail);
		return "update-ambulance-form";
	}

	@PostMapping("updateambulance")
	public String updateAmbulance(@ModelAttribute("updateamb") AmbulanceDetail ambulancedetail) {
		ambService.save(ambulancedetail);
		return "redirect:/ambulance/list";
	}
}
