package com.chainsys.hospitalmanagementsys.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.dto.RoomBedDTO;
import com.chainsys.hospitalmanagementsys.model.BedDetail;
import com.chainsys.hospitalmanagementsys.model.RoomDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.repository.BedDetailRepository;
import com.chainsys.hospitalmanagementsys.repository.RoomDetailRepository;

@Service
public class RoomDetailService {
	@Autowired
	RoomDetailRepository roomDetailRepository;
	
	@Autowired
	BedDetailRepository bedDetailRepository;

	public List<RoomDetail> getAllRoomDetails() {
		return roomDetailRepository.findAll();
	}

	public RoomDetail save(RoomDetail roomdetail) {
		return roomDetailRepository.save(roomdetail);
	}

	public RoomDetail findById(int id) {
		return roomDetailRepository.findById(id);
	}

	public void deleteById(int id) {
		roomDetailRepository.deleteById(id);
	}
	public RoomBedDTO getRoomDetails(int id) {
        RoomDetail roomdetails = findById(id);
        RoomBedDTO dto = new RoomBedDTO();
        dto.setRoomDetails(roomdetails);
        List<BedDetail> beddetails = bedDetailRepository.findByRoomId(id);
		Iterator<BedDetail> itr =beddetails.iterator();
		while(itr.hasNext()) {
			dto.addRoomBedlist(itr.next());
		}
		return dto;
		}
	public List<RoomDetail> allRoomDetails(){
		return roomDetailRepository.findAll();
		
	}
}