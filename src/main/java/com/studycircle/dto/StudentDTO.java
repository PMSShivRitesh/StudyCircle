package com.studycircle.dto;

import java.util.Date;

public class StudentDTO {
	
	private Long id;
    private String name;
    private String currentAddress;
    private String permanentAddress;
    private String mobileNo;
    private String parentMobileNo;
    private String parentOccupation;
    private String studentExamDesc;
    private Date date;
    private String emailId;
    private String photoIdProofType;
    private String photoIdProofNo;
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
