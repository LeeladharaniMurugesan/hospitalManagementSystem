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

import com.chainsys.hospitalmanagementsys.model.RoomDetail;
import com.chainsys.hospitalmanagementsys.service.RoomDetailService;


@Controller
@RequestMapping("/room")
public class RoomDetailController {
	@Autowired
	RoomDetailService rdservice;
	@GetMapping("/list")
	public String getAllRoomDetail(Model model) {
		List<RoomDetail> rd =rdservice.getAllRoomDetails();
		model.addAttribute("allroom",rd);
		return "list-room";
	}
	@GetMapping("/getroom")
	public String getRoom(@RequestParam("id") int id,Model model) {
		RoomDetail rd =rdservice.findById(id);
		model.addAttribute("getRoom",rd);
		return "find-room-id-form";
	}
	@GetMapping("/addroomform")
	public String showAddForm(Model model) {
		RoomDetail rd =new RoomDetail();
		model.addAttribute("addRoom",rd);
		return "add-room-form";
	}
	@PostMapping("/addroom")
	public String addNewRoom(@ModelAttribute("addRoom") RoomDetail rd) {
		rdservice.save(rd);
		return "redirect:/room/list";
	}
	@GetMapping("/deleteroom")
	public String deleteRoom(@RequestParam("roomId") int id) {
		rdservice.deleteById(id);
		return "redirect:/room/list";
	}
	@GetMapping("/updateroomform")
	public String showUpdateRoomForm(@RequestParam("roomId") int id, Model model) {
		RoomDetail rd = rdservice.findById(id);
		model.addAttribute("updateRoom", rd);
		return "update-room-form";
	}

	@PostMapping("updateroom")
	public String updateRoom(@ModelAttribute("updateRoom") RoomDetail rd) {
		rdservice.save(rd);
		return "redirect:/room/list";
	}

}
