package com.carrersathi.dao;

import java.util.List;

import com.carrersathi.entities.Meeting;

public interface MeetingDao {
	int saveMeeting(Meeting meeting);
    List<Meeting> getMeetingsByUserId(Long userId);
    void updateStatus(Long id, String status);
    Meeting getMeetingById(Long id);
}
