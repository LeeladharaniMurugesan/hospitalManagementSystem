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

import com.chainsys.hospitalmanagementsys.pojo.StaffDetail;
import com.chainsys.hospitalmanagementsys.service.StaffDetailService;

@Controller
@RequestMapping("/detail")
public class StaffDetailController {
	@Autowired
	StaffDetailService stservice;

	@GetMapping("/list")

	public String getAllStaffDetails(Model model) {
		List<StaffDetail> sd = stservice.getAllStaffDetails();
		model.addAttribute("allstaff", sd);
		return "list-detail";
	}

	@GetMapping("/getStaff")
	public String getStaff(@RequestParam("id") int id, Model model) {
		StaffDetail sd = stservice.findById(id);
		model.addAttribute("getstaff", sd);
		return "find-staff-id-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		StaffDetail sd = new StaffDetail();
		model.addAttribute("addstaff", sd);
		return "add-staff-form";
	}

	@PostMapping("/add")
	public String addNewStaff(@ModelAttribute("addstaff") StaffDetail sd) {
		stservice.save(sd);
		return "redirect:/detail/list";
	}

	@GetMapping("/deleteStaff")
	public String deleteStaff(@RequestParam("staff_id") int id) {
		stservice.deleteById(id);
		return "redirect:/detail/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("staff_id") int id, Model model) {
		StaffDetail sd = stservice.findById(id);
		model.addAttribute("updatestaff", sd);
		return "update-staff-form";
	}

	@PostMapping("updatestaffs")
	public String updateStaff(@ModelAttribute("updatetaff") StaffDetail dr) {
		stservice.save(dr);
		return "redirect:/detail/list";
	}
}
