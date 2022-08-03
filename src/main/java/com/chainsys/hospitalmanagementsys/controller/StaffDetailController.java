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

import com.chainsys.hospitalmanagementsys.dto.StaffDoctorDTO;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/staffdetail")
public class StaffDetailController {
	@Autowired
	StaffDetailService staffdetailservice;

	@GetMapping("/list")

	public String getStaffDetails(Model model) {
		List<StaffDetail> staffservice = staffdetailservice.getStaffDetails();
		model.addAttribute("allstaff", staffservice);
		return "list-staffdetail";
	}

	@GetMapping("/getstaff")
	public String getStaff(@RequestParam("id") int id, Model model) {
		StaffDetail staffservice = staffdetailservice.findById(id);
		model.addAttribute("getstaffs", staffservice);
		return "find-staff-id-form";
	}

	@GetMapping("/addstaffform")
	public String showStaffAddForm(Model model) {
		StaffDetail staffservice = new StaffDetail();
		model.addAttribute("addstaffs", staffservice);
		return "add-staff-form";
	}

	@PostMapping("/addstaff")
	public String addNewStaff(@ModelAttribute("addstaffs") StaffDetail staffservice) {
		staffdetailservice.save(staffservice);
		return "redirect:/staffdetail/list";
	}

	@GetMapping("/deletestaff")
	public String deleteStaff(@RequestParam("staffId") int id) {
		staffdetailservice.deleteById(id);
		return "redirect:/staffdetail/list";
	}

	@GetMapping("/updatestaffform")
	public String showUpdateForm(@RequestParam("staffId") int id, Model model) {
		StaffDetail staffservice = staffdetailservice.findById(id);
		model.addAttribute("updateStaff", staffservice);
		return "update-staff-form";
	}

	@PostMapping("updatestaff")
	public String updateStaff(@ModelAttribute("updatestaffs") StaffDetail staffservice) {
		staffdetailservice.save(staffservice);
		return "redirect:/staffdetail/list";
	}
	@GetMapping("/getstaffdoctor")
	public String getDoctor(@RequestParam("id") int id,Model model) {
		StaffDoctorDTO dto =staffdetailservice.getStaffDoctorDetail(id);
		model.addAttribute("getstaff" ,dto.getStaffdetail());
		model.addAttribute("doclist",dto.getDoclist());
		return "list-staff-doctor";
	}
	
}
