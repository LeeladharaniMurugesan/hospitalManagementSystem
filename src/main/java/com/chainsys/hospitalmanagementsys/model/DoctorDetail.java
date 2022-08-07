package com.chainsys.hospitalmanagementsys.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="DOCTOR_DETAILS")
public class DoctorDetail {
	@Id
	@Column(name="staff_id")
	@Min(value = 100, message = "Enter a Valid Id")
	@Max(value = 199, message = "Enter a Valid Id")
	private int staffId;
	@Column(name="speciality")
	@NotNull(message="Speciality must be required")
	private String speciality ;
	@Column(name="role_type")
	@NotNull(message="RoleType must be required")
	private String roleType;
	@Column(name="normal_fees")
	@Range(min = (int) 100.0)
	private int normalFees ;
	
	@OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="staff_id" , nullable=false,insertable=false,updatable=false)
    private StaffDetail staffdetail;
    public StaffDetail getStaffdetail() {
		return staffdetail;
	}
	public void setStaffdetail(StaffDetail staffdetail) {
		this.staffdetail = staffdetail;
	}
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
	public int getNormalFees() {
		return normalFees;
	}
	public void setNormalFees(int normalFees) {
		this.normalFees = normalFees;
	}
	
}