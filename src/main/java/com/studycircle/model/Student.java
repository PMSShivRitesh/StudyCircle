package com.studycircle.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
    
    @Column(name="name",nullable=false)
    private String name;
    
    @Column(name="current_address",nullable=false)
    private String currentAddress;
    
    @Column(name="permanent_address",nullable=false)
    private String permanentAddress;
    
    @Column(name="mobile_no",nullable=false)
    private String mobileNo;
    
    @Column(name="parent_mobile_no")
    private String parentMobileNo;
    
    @Column(name="parent_occupation")
    private String parentOccupation;
    
    @Column(name="student_exam_desc")
    private String studentExamDesc;
    
    @Column(name="date")
    private Date date;
    
    @Column(name="email_id")
    private String emailId;
    
    @Column(name="photo_id_proof_type")
    private String photoIdProofType;
    
    @Column(name="photo_id_proof_no")
    private String photoIdProofNo;
    
    @Column(name="status")
    private String status;


    public Long getId() {
        return id;
    }
    
	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCurrentAddress() {
		return currentAddress;
	}

	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getParentMobileNo() {
		return parentMobileNo;
	}

	public void setParentMobileNo(String parentMobileNo) {
		this.parentMobileNo = parentMobileNo;
	}

	public String getParentOccupation() {
		return parentOccupation;
	}

	public void setParentOccupation(String parentOccupation) {
		this.parentOccupation = parentOccupation;
	}

	public String getStudentExamDesc() {
		return studentExamDesc;
	}

	public void setStudentExamDesc(String studentExamDesc) {
		this.studentExamDesc = studentExamDesc;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPhotoIdProofType() {
		return photoIdProofType;
	}

	public void setPhotoIdProofType(String photoIdProofType) {
		this.photoIdProofType = photoIdProofType;
	}

	public String getPhotoIdProofNo() {
		return photoIdProofNo;
	}

	public void setPhotoIdProofNo(String photoIdProofNo) {
		this.photoIdProofNo = photoIdProofNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
