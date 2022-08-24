package com.chainsys.hospitalmanagementsys.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.hospitalmanagementsys.dto.StaffAmbulanceDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffBookingCancellationDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffDoctorDTO;
import com.chainsys.hospitalmanagementsys.dto.StaffDoctorVisitDTO;
import com.chainsys.hospitalmanagementsys.model.AmbulanceDetail;
import com.chainsys.hospitalmanagementsys.model.BookingCancellationDetail;
import com.chainsys.hospitalmanagementsys.model.DoctorDetail;
import com.chainsys.hospitalmanagementsys.model.DoctorVisitDetail;
import com.chainsys.hospitalmanagementsys.model.RoomDetail;
import com.chainsys.hospitalmanagementsys.model.StaffDetail;
import com.chainsys.hospitalmanagementsys.repository.AmbulanceDetailRepository;
import com.chainsys.hospitalmanagementsys.repository.BookingCancellationDetailRepository;
import com.chainsys.hospitalmanagementsys.repository.DoctorDetailRepository;
import com.chainsys.hospitalmanagementsys.repository.DoctorVisitDetailRepository;
import com.chainsys.hospitalmanagementsys.repository.StaffDetailRepository;


@Service
public class StaffDetailService {
	@Autowired
	StaffDetailRepository staffDetailRepository;
	@Autowired
	DoctorDetailRepository doctorDetailRepository;
	public List<StaffDetail> getStaffDetails() {
		return staffDetailRepository.findAll();
	}
	@Autowired
	DoctorVisitDetailRepository doctorVisitDetailRepository;
	public List<StaffDetail> getStaffDetailVisit(){
		return staffDetailRepository.findAll();
	}
	@Autowired
	AmbulanceDetailRepository ambulanceDetailRepository;
	public List<StaffDetail> getAmbulanceDetail(){
		return staffDetailRepository.findAll();
	}
	@Autowired
	BookingCancellationDetailRepository bookingCancellationRepository;
	public List<StaffDetail> getStaffbookingcancellationdetails(){
		return staffDetailRepository.findAll();
	}
	public StaffDetail save(StaffDetail staffDetail) {
		return staffDetailRepository.save(staffDetail);
	}

	public StaffDetail findById(int id) {
		return staffDetailRepository.findById(id);
	}

	public void deleteById(int id) {
		staffDetailRepository.deleteById(id);
	}
	public StaffDoctorDTO getStaffDoctorDetail(int id) {
		StaffDetail staffDetail =findById(id);
		StaffDoctorDTO dto =new StaffDoctorDTO();
		dto.setStaffdetail(staffDetail);
		DoctorDetail doctordetails = doctorDetailRepository.findByStaffId(id);
			dto.setDoclist(doctordetails);
		return dto;
		}
	public StaffDoctorVisitDTO getStaffDoctorVisitDetail(int id) {
		StaffDetail staffDetails =findById(id);
		StaffDoctorVisitDTO docdto =new StaffDoctorVisitDTO();
		docdto.setStaffdetails(staffDetails);
		List<DoctorVisitDetail> doctordetails = doctorVisitDetailRepository.findByStaffId(id);
		Iterator<DoctorVisitDetail> itr =doctordetails.iterator();
		while(itr.hasNext()) {
			docdto.addDoclist(itr.next());
		}
		return docdto;
		}
	public StaffAmbulanceDTO getAmbulanceVisitDetail(int id) {
		StaffDetail ambulanceDetails =findById(id);
		StaffAmbulanceDTO ambulancedto =new StaffAmbulanceDTO();
		ambulancedto.setStaffambulancedetails(ambulanceDetails);
		List<AmbulanceDetail> ambulancedetails = ambulanceDetailRepository.findByStaffId(id);
		Iterator<AmbulanceDetail> itr =ambulancedetails.iterator();
		while(itr.hasNext()) {
			ambulancedto.addambulancelist(itr.next());
		}
		return ambulancedto;
		}
	public StaffBookingCancellationDTO getBookingCancellationDetail(int id) {
		StaffDetail bookingCancellationDetails =findById(id);
		StaffBookingCancellationDTO bookingcancellationdto =new StaffBookingCancellationDTO();
		bookingcancellationdto.setStaffbookingcancellationdetails(bookingCancellationDetails);
		List<BookingCancellationDetail> bookingcancellationdetails = bookingCancellationRepository.findByStaffId(id);
		Iterator<BookingCancellationDetail> itr =bookingcancellationdetails.iterator();
		while(itr.hasNext()) {
			bookingcancellationdto.addBookingCancellationlist(itr.next());
		}
		return bookingcancellationdto;
		}
	public StaffDetail staffByEmailAndPassword(String email, String password) {
        return staffDetailRepository.findByEmailIdAndPassword(email, password);
    }
	public List<StaffDetail> staffDetailGetByDesignation(String designation){
        return staffDetailRepository.getIdByDesignation(designation);
    }
	public List<StaffDetail> allStaffDetails(){
		return staffDetailRepository.findAll();
		
	}
	
}
