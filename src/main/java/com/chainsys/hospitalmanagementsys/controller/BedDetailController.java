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

import com.chainsys.hospitalmanagementsys.model.BedDetail;
import com.chainsys.hospitalmanagementsys.service.BedDetailService;

@Controller
@RequestMapping("/bed")
public class BedDetailController {
	@Autowired
	BedDetailService bedService;

	@GetMapping("/list")

	public String getAllBedDetails(Model model) {
		List<BedDetail> beddetail =bedService.getAllBedDetails();
		model.addAttribute("allbed", beddetail);
		return "list-bed";
	}

	@GetMapping("/getbeds")
	public String getBed(@Valid@RequestParam("id") int id, Model model) {
		BedDetail beddetail = bedService.findById(id);
		model.addAttribute("getbed",beddetail);
		return "find-bed-id-form";
	}

	@GetMapping("/addbedform")
	public String showAddBedForm(Model model) {
		BedDetail beddetail = new BedDetail();
		model.addAttribute("addbeds", beddetail);
		return "add-bed-form";
	}

	@PostMapping("/addbed")
	public String addNewBed(@Valid @ModelAttribute("addbeds") BedDetail beddetail,Errors errors) {
		if(errors.hasErrors()) {
			return "add-bed-form";
		}
		bedService.save(beddetail);
		return "redirect:/bed/list";
	}

	@GetMapping("/deletebed")
	public String deleteBed(@Valid@RequestParam("bedId") int id) {
		bedService.deleteById(id);
		return "redirect:/bed/list";
	}

	@GetMapping("/updatebedform")
	public String showUpdateBedForm(@Valid@RequestParam("bedId") int id, Model model) {
		BedDetail beddetail = bedService.findById(id);
		model.addAttribute("updatebed", beddetail);
		return "update-bed-form";
	}

	@PostMapping("updatebeds")
	public String updateAmbulance(@ModelAttribute("updatebed") BedDetail beddetail,Errors errors)
	{
		if(errors.hasErrors()) {
			return "update-bed-form";
		}
		bedService.save(beddetail);
		return "redirect:/bed/list";
	}
}
