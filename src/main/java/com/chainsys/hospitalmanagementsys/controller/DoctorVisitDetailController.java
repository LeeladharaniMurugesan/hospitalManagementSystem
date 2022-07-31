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

import com.chainsys.hospitalmanagementsys.pojo.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.service.DoctorVisitDetailService;

@Controller
@RequestMapping("/doctorvisit")
public class DoctorVisitDetailController {
	@Autowired
	DoctorVisitDetailService dvdservice;

	@GetMapping("/list")

	public String getAllDoctorVisitDetails(Model model) {
		List<DoctorVisitDetail> dvd = dvdservice.getAllDoctorVisitDetails();
		model.addAttribute("alldocvisit", dvd);
		return "list-doctorvisit";
	}

	@GetMapping("/getdocvisit")
	public String getDoctorVisit(@RequestParam("id") int id, Model model) {
		DoctorVisitDetail dvd = dvdservice.findById(id);
		model.addAttribute("getdoctorvisit", dvd);
		return "find-doctorvisit-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		DoctorVisitDetail dvd = new DoctorVisitDetail();
		model.addAttribute("adddocvisit", dvd);
		return "add-doctorvisit-form";
	}

	@PostMapping("/add")
	public String addNewDoctorVisit(@ModelAttribute("adddocvisit") DoctorVisitDetail dvd) {
		dvdservice.save(dvd);
		return "redirect:/doctorvisit/list";
	}

	@GetMapping("/deletedv")
	public String deleteDoctorVisit(@RequestParam("s_no") int id) {
		dvdservice.deleteById(id);
		return "redirect:/doctorvisit/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("s_no") int id, Model model) {
		DoctorVisitDetail dvd = dvdservice.findById(id);
		model.addAttribute("updatedocvisit", dvd);
		return "update-doctorvisit-form";
	}

	@PostMapping("updatedv")
	public String updateDoctorVisit(@ModelAttribute("updatedocvisit") DoctorVisitDetail dvd) {
		dvdservice.save(dvd);
		return "redirect:/doctorvisit/list";
	}
}
