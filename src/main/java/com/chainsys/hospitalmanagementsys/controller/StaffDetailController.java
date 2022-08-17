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
	public String addNewStaff(@Valid @ModelAttribute("addstaffs") StaffDetail staffservice,Errors errors)
	{
	if(errors.hasErrors()) {
		return "add-staff-form";
	}
	staffdetailservice.save(staffservice);
	return "redirect:/staffdetail/list";
		
	}

	@GetMapping("/deletestaff")
	public String deleteStaff(@Valid@RequestParam("staffId") int id) {
		staffdetailservice.deleteById(id);
		return "redirect:/staffdetail/list";
	}

	@GetMapping("/updatestaffform")
	public String showUpdateForm(@RequestParam("staffId") int id, Model model) {
		StaffDetail staffservice = staffdetailservice.findById(id);
		model.addAttribute("updatestaffs", staffservice);
		return "update-staff-form";
	}

	@PostMapping("updatestaff")
	public String updateStaff(@ModelAttribute("updatestaffs") StaffDetail staffservice,Errors errors) {
	if(errors.hasErrors()) {
		return "update-staff-form";
	}
		staffdetailservice.save(staffservice);
		return "redirect:/staffdetail/list";
	}
	@GetMapping("/stafflogin")
    public String adminaccessform(Model model) {
        StaffDetail staffs = new StaffDetail();
        model.addAttribute("staff",staffs);
        return "staff-login-form";
    }                   

    @PostMapping("/staffpage")
    public String checkingAccess(@ModelAttribute("staff") StaffDetail staff,Model model) {
        StaffDetail staffDetail = staffdetailservice.staffByEmailAndPassword(staff.getEmailId(),staff.getPassword());
        if (staffDetail!= null){

            return "redirect:/home/staffuse";
        } else {
        	model.addAttribute("result","Invalid EmailId and Password!!!");
            return "staff-login-form";
        }
    }
    @GetMapping("/doctorlist")
    public String getDoctorDesignation(Model model) {
    	List<StaffDetail> taskDesignation = staffdetailservice.staffDetailGetByDesignation("Doctor");
    	model.addAttribute("allstaff",taskDesignation);
    	return "list-staffdetail";
 }
    @GetMapping("/nurselist")
    public String getNurseDesignation(Model model) {
    	List<StaffDetail> taskDesignation = staffdetailservice.staffDetailGetByDesignation("Nurse");
    	model.addAttribute("allstaff",taskDesignation);
    	return "list-staffdetail";
}
    @GetMapping("/chiefdoctorlist")
    public String getChiefDoctorDesignation(Model model) {
    	List<StaffDetail> taskDesignation = staffdetailservice.staffDetailGetByDesignation("ChiefDoctor");
    	model.addAttribute("allstaff",taskDesignation);
    	return "list-staffdetail";
}
    @GetMapping("/ambulancedriverlist")
    public String getAmbulanceDriverDesignation(Model model) {
    	List<StaffDetail> taskDesignation = staffdetailservice.staffDetailGetByDesignation("AmbulanceDriver");
    	model.addAttribute("allstaff",taskDesignation);
    	return "list-staffdetail";
}
    @GetMapping("/cleanerlist")
    public String getCleanerDesignation(Model model) {
    	List<StaffDetail> taskDesignation = staffdetailservice.staffDetailGetByDesignation("Cleaner");
    	model.addAttribute("allstaff",taskDesignation);
    	return "list-staffdetail";
}
    @GetMapping("/wardboylist")
    public String getWardBoyDesignation(Model model) {
    	List<StaffDetail> taskDesignation = staffdetailservice.staffDetailGetByDesignation("WardBoy");
    	model.addAttribute("allstaff",taskDesignation);
    	return "list-staffdetail";
}
}
