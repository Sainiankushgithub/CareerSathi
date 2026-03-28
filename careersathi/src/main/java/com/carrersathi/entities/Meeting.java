package com.carrersathi.entities;

import java.time.LocalDateTime;

public class Meeting {
	private Long id;
    private Long consulteeId;
    private Long consultorId;
    private String specialization;
    private LocalDateTime meetingTime;
    private String meetingLink;
    private String status;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getConsulteeId() {
		return consulteeId;
	}
	public void setConsulteeId(Long consulteeId) {
		this.consulteeId = consulteeId;
	}
	public Long getConsultorId() {
		return consultorId;
	}
	public void setConsultorId(Long consultorId) {
		this.consultorId = consultorId;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public LocalDateTime getMeetingTime() {
		return meetingTime;
	}
	public void setMeetingTime(LocalDateTime meetingTime) {
		this.meetingTime = meetingTime;
	}
	public String getMeetingLink() {
		return meetingLink;
	}
	public void setMeetingLink(String meetingLink) {
		this.meetingLink = meetingLink;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
