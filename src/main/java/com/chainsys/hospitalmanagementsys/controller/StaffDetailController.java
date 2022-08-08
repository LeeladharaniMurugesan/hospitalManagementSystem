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

import com.chainsys.hospitalmanagementsys.dto.StaffAmbulanceDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffBookingCancellationDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffDoctorDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffDoctorVisitDTO;
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
	@GetMapping("/getstaffdoctor")
	public String getDoctor(@RequestParam("id") int id,Model model) {
		StaffDoctorDTO dto =staffdetailservice.getStaffDoctorDetail(id);
		model.addAttribute("getstaff" ,dto.getStaffdetail());
		model.addAttribute("doclist",dto.getDoclist());
		return "list-staff-doctor";
	}
	@GetMapping("/getstaffdocvisit")
	public String getDoctorVisit(@RequestParam("id") int id,Model model) {
		StaffDoctorVisitDTO docdto =staffdetailservice.getStaffDoctorVisitDetail(id);
		model.addAttribute("getstaffdoc" ,docdto.getStaffdetails());
		model.addAttribute("doctorlist",docdto.getDocvisitlist());
		return "list-staff-doctorvisit";
	}
	@GetMapping("/getambulancedetail")
	public String getAmbulanceDetail(@RequestParam("id") int id,Model model) {
		StaffAmbulanceDTO ambulancedto =staffdetailservice.getAmbulanceVisitDetail(id);
		model.addAttribute("getambulance" ,ambulancedto.getStaffambulancedetails());
		model.addAttribute("ambulancelist",ambulancedto.getAmbulancedetail());
		return "list-staff-ambulancelist";
	}
	@GetMapping("/getbookingcancellationdetail")
	public String getBookingCancellationDetail(@RequestParam("id") int id,Model model) {
		StaffBookingCancellationDTO bookingcancellationdto =staffdetailservice.getBookingCancellationDetail(id);
		model.addAttribute("getbookingcancellation",bookingcancellationdto.getStaffbookingcancellationdetails());
		model.addAttribute("bookcancellist",bookingcancellationdto.getBookingcancellationdetail());
		return "list-staff-bookingcancellation";
	}
	@GetMapping("/stafflogin")
    public String adminaccessform(Model model) {
        StaffDetail staffs = new StaffDetail();
        model.addAttribute("staff",staffs);
        return "staff-login-form";
    }                   

    @PostMapping("/staffpage")
    public String checkingAccess(@ModelAttribute("staff") StaffDetail staff) {
        StaffDetail staffDetail = staffdetailservice.StaffByEmailAndPassword(staff.getEmailId(),staff.getPassword());
        if (staffDetail!= null){

            return "redirect:/home/staffuse";
        } else
            return "invalid-staff-error";

    }

	
}
