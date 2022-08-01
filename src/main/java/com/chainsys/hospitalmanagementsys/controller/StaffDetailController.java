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

import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/staffdetail")
public class StaffDetailController {
	@Autowired
	StaffDetailService stservice;

	@GetMapping("/list")

	public String getAllStaffDetails(Model model) {
		List<StaffDetail> sd = stservice.getAllStaffDetails();
		model.addAttribute("allstaff", sd);
		return "list-staffdetail";
	}

	@GetMapping("/getstaff")
	public String getStaff(@RequestParam("id") int id, Model model) {
		StaffDetail sd = stservice.findById(id);
		model.addAttribute("getStaff", sd);
		return "find-staff-id-form";
	}

	@GetMapping("/addstaffform")
	public String showStaffAddForm(Model model) {
		StaffDetail sd = new StaffDetail();
		model.addAttribute("addStaff", sd);
		return "add-staff-form";
	}

	@PostMapping("/addstaff")
	public String addNewStaff(@ModelAttribute("addStaff") StaffDetail sd) {
		stservice.save(sd);
		return "redirect:/staffdetail/list";
	}

	@GetMapping("/deletestaff")
	public String deleteStaff(@RequestParam("staffId") int id) {
		stservice.deleteById(id);
		return "redirect:/staffdetail/list";
	}

	@GetMapping("/updatestaffform")
	public String showUpdateForm(@RequestParam("staffId") int id, Model model) {
		StaffDetail sd = stservice.findById(id);
		model.addAttribute("updateStaff", sd);
		return "update-staff-form";
	}

	@PostMapping("updatestaff")
	public String updateStaff(@ModelAttribute("updateStaff") StaffDetail dr) {
		stservice.save(dr);
		return "redirect:/staffdetail/list";
	}
}
