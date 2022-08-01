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

import com.chainsys.hospitalmanagementsys.model.BedDetail;
import com.chainsys.hospitalmanagementsys.service.BedDetailService;

@Controller
@RequestMapping("/bed")
public class BedDetailController {
	@Autowired
	BedDetailService bedservice;

	@GetMapping("/list")

	public String getAllBedDetails(Model model) {
		List<BedDetail> bd = bedservice.getAllBedDetails();
		model.addAttribute("allbed", bd);
		return "list-bed";
	}

	@GetMapping("/getbeds")
	public String getBed(@RequestParam("id") int id, Model model) {
		BedDetail bd = bedservice.findById(id);
		model.addAttribute("getbed", bd);
		return "find-bed-id-form";
	}

	@GetMapping("/addbedform")
	public String showAddBedForm(Model model) {
		BedDetail bd = new BedDetail();
		model.addAttribute("addBed", bd);
		return "add-bed-form";
	}

	@PostMapping("/addbed")
	public String addNewBed(@ModelAttribute("addBed") BedDetail bd) {
		bedservice.save(bd);
		return "redirect:/bed/list";
	}

	@GetMapping("/deletebed")
	public String deleteBed(@RequestParam("bedId") int id) {
		bedservice.deleteById(id);
		return "redirect:/bed/list";
	}

	@GetMapping("/updatebedform")
	public String showUpdateBedForm(@RequestParam("bedId") int id, Model model) {
		BedDetail bd = bedservice.findById(id);
		model.addAttribute("updatebed", bd);
		return "update-bed-form";
	}

	@PostMapping("updatebeds")
	public String updateAmbulance(@ModelAttribute("updatebed") BedDetail bd) {
		bedservice.save(bd);
		return "redirect:/bed/list";
	}
}
