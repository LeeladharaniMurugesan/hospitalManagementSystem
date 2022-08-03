package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.RoomDetail;
import com.chainsys.hospitalmanagementsys.repository.RoomDetailRepository;

@Service
public class RoomDetailService {
	@Autowired
	RoomDetailRepository roomDetailRepository;

	public List<RoomDetail> getAllRoomDetails() {
		List<RoomDetail> roomdetail = roomDetailRepository.findAll();
		return roomdetail;
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
}