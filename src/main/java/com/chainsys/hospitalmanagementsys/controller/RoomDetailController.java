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

import com.chainsys.hospitalmanagementsys.pojo.RoomDetail;
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
	@GetMapping("/getRoom")
	public String getRoom(@RequestParam("id") int id,Model model) {
		RoomDetail rd =rdservice.findById(id);
		model.addAttribute("getroom",rd);
		return "find-room-id-form";
	}
	@GetMapping("/addroomform")
	public String showAddForm(Model model) {
		RoomDetail rd =new RoomDetail();
		model.addAttribute("addroom",rd);
		return "add-room-form";
	}
	@PostMapping("/add")
	public String addNewRoom(@ModelAttribute("addroom") RoomDetail rd) {
		rdservice.save(rd);
		return "redirect:/room/list";
	}
	@GetMapping("/deleteRoom")
	public String deleteRoom(@RequestParam("room_id") int id) {
		rdservice.deleteById(id);
		return "redirect:/room/list";
	}
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("room_id") int id, Model model) {
		RoomDetail rd = rdservice.findById(id);
		model.addAttribute("updateroom", rd);
		return "update-room-form";
	}

	@PostMapping("updaterooms")
	public String updateRoom(@ModelAttribute("updateroom") RoomDetail rs) {
		rdservice.save(rs);
		return "redirect:/room/list";
	}

}
