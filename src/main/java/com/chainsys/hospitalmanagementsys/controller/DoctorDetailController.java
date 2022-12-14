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

import com.chainsys.hospitalmanagementsys.dto.StaffDoctorDTO;
import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.service.DoctorDetailService;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/doctor")
public class DoctorDetailController {
	@Autowired
	DoctorDetailService docservice;
	@Autowired
	StaffDetailService staffdetailservice;
	private static final String LIST="redirect:/doctor/list";
	@GetMapping("/list")

	public String getAllDoctorDetails(Model model) {
		List<DoctorDetail> doctordetail = docservice.getAllDoctorDetails();
		model.addAttribute("alldoctor", doctordetail);
		return "list-doctor";
	}

	@GetMapping("/getdoctor")
	public String getDoctor(@Valid@RequestParam("id") int id, Model model) {
		DoctorDetail doctordetail = docservice.findById(id);
		model.addAttribute("getdoc", doctordetail);
		return "find-doctor-id-form";
	}

	@GetMapping("/adddoctorform")
	public String showAdoctordetailDoctorForm(Model model) {
	    List<StaffDetail> staffStatus = staffdetailservice.staffDetailGetByDesignation("Doctor");
        model.addAttribute("allstaff",staffStatus);
		DoctorDetail doctordetail = new DoctorDetail();
		model.addAttribute("adddoc", doctordetail);
		return "add-doctor-form";
	}

	@PostMapping("/adddoctor")
	public String adoctordetailNewDoctor(@Valid @ModelAttribute("adddoc") DoctorDetail doctordetail,Errors errors) {
		if(errors.hasErrors()) {
			return "add-doctor-form";
		}
		docservice.save(doctordetail);
		return LIST;
	}

	@GetMapping("/deletedoctor")
	public String deleteDoctor(@Valid@RequestParam("staffId") int id) {
		docservice.deleteById(id);
		return LIST;
	}

	@GetMapping("/updatedoctorform")
	public String showUpdateDoctorForm(@Valid@RequestParam("staffId") int id, Model model) {
		DoctorDetail doctordetail = docservice.findById(id);
		model.addAttribute("updatedoc", doctordetail);
		return "update-doctor-form";
	}

	@PostMapping("updatedoctor")
	public String updateDoctor(@ModelAttribute("updatedoc") DoctorDetail doctordetail,Errors errors) {
		if(errors.hasErrors()) {
			return "update-doctor-form";
		}
		docservice.save(doctordetail);
		return LIST;
	}
	@GetMapping("/getstaffdoctor")
	public String getDoctors(@RequestParam("id") int id,Model model) {
		StaffDoctorDTO dto =staffdetailservice.getStaffDoctorDetail(id);
		model.addAttribute("getstaff" ,dto.getStaffdetail());
		model.addAttribute("doclist",dto.getDoclist());
		return "list-staff-doctor";
	}
}
