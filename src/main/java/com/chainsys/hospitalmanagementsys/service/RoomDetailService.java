package com.chainsys.hospitalmanagementsys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.pojo.RoomDetail;
import com.chainsys.hospitalmanagementsys.repository.RoomDetailRepository;

@Service
public class RoomDetailService {
	@Autowired
	RoomDetailRepository rep;

	public List<RoomDetail> getAllRoomDetails() {
		List<RoomDetail> rt = rep.findAll();
		return rt;
	}

	public RoomDetail save(RoomDetail rt) {
		return rep.save(rt);
	}

	public RoomDetail findById(int id) {
		return rep.findById(id);
	}

	public void deleteById(int id) {
		rep.deleteById(id);
	}
}