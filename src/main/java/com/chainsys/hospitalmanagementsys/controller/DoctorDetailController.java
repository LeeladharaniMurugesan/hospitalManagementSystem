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

import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.service.DoctorDetailService;

@Controller
@RequestMapping("/doctor")
public class DoctorDetailController {
	@Autowired
	DoctorDetailService docservice;

	@GetMapping("/list")

	public String getAllDoctorDetails(Model model) {
		List<DoctorDetail> dd = docservice.getAllDoctorDetails();
		model.addAttribute("alldoctor", dd);
		return "list-doctor";
	}

	@GetMapping("/getdoctor")
	public String getDoctor(@RequestParam("id") int id, Model model) {
		DoctorDetail dd = docservice.findById(id);
		model.addAttribute("getdoc", dd);
		return "find-doctor-id-form";
	}

	@GetMapping("/adddoctorform")
	public String showAddDoctorForm(Model model) {
		DoctorDetail dd = new DoctorDetail();
		model.addAttribute("adddoc", dd);
		return "add-doctor-form";
	}

	@PostMapping("/adddoctor")
	public String addNewDoctor(@ModelAttribute("adddoc") DoctorDetail dd) {
		docservice.save(dd);
		return "redirect:/doctor/list";
	}

	@GetMapping("/deletedoctor")
	public String deleteDoctor(@RequestParam("staffId") int id) {
		docservice.deleteById(id);
		return "redirect:/doctor/list";
	}

	@GetMapping("/updatedoctorform")
	public String showUpdateDoctorForm(@RequestParam("staffId") int id, Model model) {
		DoctorDetail dd = docservice.findById(id);
		model.addAttribute("updatedoc", dd);
		return "update-doctor-form";
	}

	@PostMapping("updatedoctor")
	public String updateDoctor(@ModelAttribute("updatedoc") DoctorDetail dd) {
		docservice.save(dd);
		return "redirect:/doctor/list";
	}
}
