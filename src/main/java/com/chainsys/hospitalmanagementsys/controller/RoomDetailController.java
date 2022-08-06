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

import com.chainsys.hospitalmanagementsys.dto.RoomBedDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffDoctorDTO;
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
	public String getRoom(@RequestParam("id") int id,Model model) {
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
	public String addNewRoom(@ModelAttribute("addrooms") RoomDetail roomdetail) {
		roomdetailservice.save(roomdetail);
		return "redirect:/room/list";
	}
	@GetMapping("/deleteroomform")
	public String deleteRoom(@RequestParam("roomId") int id) {
		roomdetailservice.deleteById(id);
		return "redirect:/room/list";
	}
	@GetMapping("/updateroomform")
	public String showUpdateRoomForm(@RequestParam("roomId") int id, Model model) {
		RoomDetail roomdetail = roomdetailservice.findById(id);
		model.addAttribute("updaterooms", roomdetail);
		return "update-room-form";
	}

	@PostMapping("/updateroom")
	public String updateRoom(@ModelAttribute("updaterooms") RoomDetail roomdetail) {
		roomdetailservice.save(roomdetail);
		return "redirect:/room/list";
	}
	@GetMapping("/getroombed")
	public String getRoomBed(@RequestParam("id") int id,Model model) {
		RoomBedDTO dto =roomdetailservice.getRoomDetails(id);
		model.addAttribute("getroom",dto.getRoomDetails());
		model.addAttribute("bedlist",dto.getBedDetails());
		return"list-room-bed";
	}

}
