package com.chainsys.hospitalmanagementsys.controller;
import java.util.List;

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

import com.chainsys.hospitalmanagementsys.dto.StaffDoctorVisitDTO;
import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.service.DoctorVisitDetailService;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/doctorvisit")
public class DoctorVisitDetailController {
	@Autowired
	DoctorVisitDetailService doctorvisitservice;
	@Autowired
	StaffDetailService staffdetailservice;
	
	private static final String LIST="redirect:/doctorvisit/list";
	@GetMapping("/list")

	public String getAllDoctorVisitDetails(Model model) {
		List<DoctorVisitDetail> doctorvisit = doctorvisitservice.getAllDoctorVisitDetails();
		model.addAttribute("alldocvisit", doctorvisit);
		return "list-doctorvisit";
	}

	@GetMapping("/getdocvisit")
	public String getDoctorVisit(@Valid@RequestParam("id") int id, Model model) {
		DoctorVisitDetail doctorvisit = doctorvisitservice.findById(id);
		model.addAttribute("getdoctorvisit",doctorvisit);
		return "find-doctorvisit-id-form";
	}

	@GetMapping("/adddocvisitform")
	public String showAddDoctorVisitForm(Model model) {
		DoctorVisitDetail doctorvisit = new DoctorVisitDetail();
		model.addAttribute("adddocvisit", doctorvisit);
		return "add-doctorvisit-form";
	}

	@PostMapping("/adddocvisitdetail")
	public String addNewDoctorVisit(@Valid@ModelAttribute("adddocvisit") DoctorVisitDetail doctorvisit,Errors errors) {
		if(errors.hasErrors()) {
			return "add-doctorvisit-form";
		}
		doctorvisitservice.save(doctorvisit);
		return LIST;
	}

	@GetMapping("/deletedocvisit")
	public String deleteDoctorVisit(@Valid@RequestParam("sNo") int id) {
		doctorvisitservice.deleteById(id);
		return LIST;
	}

	@GetMapping("/updatedocvisitform")
	public String showUpdateDoctorVisitForm(@Valid@RequestParam("sNo") int id, Model model) {
		DoctorVisitDetail doctorvisit = doctorvisitservice.findById(id);
		model.addAttribute("updatedocvisit", doctorvisit);
		return "update-doctorvisit-form";
	}

	@PostMapping("/updatedoctorvisit")
	public String updateDoctorVisit(@Valid @ModelAttribute("updatedocvisit") DoctorVisitDetail doctorvisit,Errors errors) {
		if(errors.hasErrors()) {
			return "update-doctorvisit-form";
		}
		doctorvisitservice.save(doctorvisit);
		return LIST;
	}
	@GetMapping("/getstaffdocvisit")
	public String getDoctorVisits(@RequestParam("id") int id,Model model) {
		StaffDoctorVisitDTO docdto =staffdetailservice.getStaffDoctorVisitDetail(id);
		model.addAttribute("getstaffdoc" ,docdto.getStaffdetails());
		model.addAttribute("doctorlist",docdto.getDocvisitlist());
		return "list-staff-doctorvisit";
	}
	
}
