package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.model.RoomDetail;
import com.chainsys.hospitalmanagementsys.repository.RoomDetailRepository;

@Service
public class RoomDetailService {
	@Autowired
	RoomDetailRepository roomdetail;

	public List<RoomDetail> getAllRoomDetails() {
		List<RoomDetail> rd = roomdetail.findAll();
		return rd;
	}

	public RoomDetail save(RoomDetail rd) {
		return roomdetail.save(rd);
	}

	public RoomDetail findById(int id) {
		return roomdetail.findById(id);
	}

	public void deleteById(int id) {
		roomdetail.deleteById(id);
	}
}