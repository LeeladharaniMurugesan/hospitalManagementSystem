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

import com.chainsys.hospitalmanagementsys.model.RoomDetail;
import com.chainsys.hospitalmanagementsys.service.RoomDetailService;


@Controller
@RequestMapping("/room")
public class RoomDetailController {
	@Autowired
	RoomDetailService roomdetailservice;
	@GetMapping("/list")
	public String getAllRoomDetail(Model model) {
		List<RoomDetail> roomdetail =roomdetailservice.getAllRoomDetails();
		model.addAttribute("allroom",roomdetail);
		return "list-room";
	}
	@GetMapping("/getroom")
	public String getRoom(@Valid@RequestParam("id") int id,Model model) {
		RoomDetail roomdetail =roomdetailservice.findById(id);
		model.addAttribute("getrooms",roomdetail);
		return "find-room-id-form";
	}
	@GetMapping("/addroomform")
	public String showAddForm(Model model) {
		RoomDetail roomdetail =new RoomDetail();
		model.addAttribute("addrooms",roomdetail);
		return "add-room-form";
	}
	@PostMapping("/addroom")
	public String addNewRoom(@Valid @ModelAttribute("addrooms") RoomDetail roomdetail,Errors errors) {
			if(errors.hasErrors()) {
				return "add-room-form";
		}
		roomdetailservice.save(roomdetail);
		return "redirect:/room/list";
	}
	@GetMapping("/deleteroomform")
	public String deleteRoom(@Valid@RequestParam("roomId") int id) {
		roomdetailservice.deleteById(id);
		return "redirect:/room/list";
	}
	@GetMapping("/updateroomform")
	public String showUpdateRoomForm(@Valid@RequestParam("roomId") int id, Model model) {
		RoomDetail roomdetail = roomdetailservice.findById(id);
		model.addAttribute("updaterooms", roomdetail);
		return "update-room-form";
	}

	@PostMapping("/updateroom")
	public String updateRoom(@ModelAttribute("updaterooms") RoomDetail roomdetail,Errors errors) {
		if(errors.hasErrors()) {
			return "update-room-form";
	}
		roomdetailservice.save(roomdetail);
		return "redirect:/room/list";
	}

}
