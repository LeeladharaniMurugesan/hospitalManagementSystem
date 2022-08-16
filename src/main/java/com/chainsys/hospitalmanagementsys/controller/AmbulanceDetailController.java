package com.chainsys.hospitalmanagementsys.controller;

import java.util.List;
import java.util.Optional;

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

import com.chainsys.hospitalmanagementsys.dto.StaffAmbulanceDTO;
import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.service.AmbulanceDetailService;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/ambulance")
public class AmbulanceDetailController {
	@Autowired
	AmbulanceDetailService ambService;
	@Autowired
	StaffDetailService staffdetailservice;

	@GetMapping("/list")

	public String getAllAmbulanceDetails(Model model) {
		List<AmbulanceDetail> ambulancedetail =ambService.getAllAmbulanceDetails();
		model.addAttribute("allambulance", ambulancedetail);
		return "list-ambulance";
	}

	@GetMapping("/getambulance")
	public String getAmbulance(@RequestParam("id") String id, Model model) {
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
	public String addNewAmbulance(@Valid @ModelAttribute("addambulance") AmbulanceDetail ambulancedetail,Errors errors) {
		if(errors.hasErrors()) {
			return "add-ambulance-form";
		}
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
	public String updateAmbulance(@Valid @ModelAttribute("updateamb") AmbulanceDetail ambulancedetail,Errors errors) {
		if(errors.hasErrors()) {
			return "update-ambulance-form";
		}
		ambService.save(ambulancedetail);
		return "redirect:/ambulance/list";
	}
	@GetMapping("/getambulancedetail")
	public String getAmbulanceDetail(@RequestParam("id") int id,Model model) {
		StaffAmbulanceDTO ambulancedto =staffdetailservice.getAmbulanceVisitDetail(id);
		model.addAttribute("getambulance" ,ambulancedto.getStaffambulancedetails());
		model.addAttribute("ambulancelist",ambulancedto.getAmbulancedetail());
		return "list-staff-ambulancelist";
	}
}
