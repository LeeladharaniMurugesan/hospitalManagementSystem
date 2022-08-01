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

import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.service.DoctorVisitDetailService;

@Controller
@RequestMapping("/doctorvisit")
public class DoctorVisitDetailController {
	@Autowired
	DoctorVisitDetailService doctorvisitservice;

	@GetMapping("/list")

	public String getAllDoctorVisitDetails(Model model) {
		List<DoctorVisitDetail> dvd = doctorvisitservice.getAllDoctorVisitDetails();
		model.addAttribute("alldocvisit", dvd);
		return "list-doctorvisit";
	}

	@GetMapping("/getdocvisit")
	public String getDoctorVisit(@RequestParam("id") int id, Model model) {
		DoctorVisitDetail dvd = doctorvisitservice.findById(id);
		model.addAttribute("getdoctorvisit", dvd);
		return "find-doctorvisit-id-form";
	}

	@GetMapping("/adddocvisitform")
	public String showAddDoctorVisitForm(Model model) {
		DoctorVisitDetail dvd = new DoctorVisitDetail();
		model.addAttribute("adddocvisit", dvd);
		return "add-doctorvisit-form";
	}

	@PostMapping("/adddocvisitdetail")
	public String addNewDoctorVisit(@ModelAttribute("adddocvisit") DoctorVisitDetail dvd) {
		doctorvisitservice.save(dvd);
		return "redirect:/doctorvisit/list";
	}

	@GetMapping("/deletedocvisit")
	public String deleteDoctorVisit(@RequestParam("sNo") int id) {
		doctorvisitservice.deleteById(id);
		return "redirect:/doctorvisit/list";
	}

	@GetMapping("/updatedocvisitform")
	public String showUpdateDoctorVisitForm(@RequestParam("sNo") int id, Model model) {
		DoctorVisitDetail dvd = doctorvisitservice.findById(id);
		model.addAttribute("updatedocvisit", dvd);
		return "update-doctorvisit-form";
	}

	@PostMapping("updatedoctorvisit")
	public String updateDoctorVisit(@ModelAttribute("updatedocvisit") DoctorVisitDetail dvd) {
		doctorvisitservice.save(dvd);
		return "redirect:/doctorvisit/list";
	}
}
