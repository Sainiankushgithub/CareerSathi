package com.carrersathi.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.carrersathi.entities.Meeting;
@Repository
public class MeetingDaoImpl implements MeetingDao{
	@Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public int saveMeeting(Meeting m) {
        String sql = "INSERT INTO meetings (consultee_id, consultor_id, specialization, meeting_time, meeting_link) VALUES (?, ?, ?, ?, ?)";

        return jdbcTemplate.update(sql,
                m.getConsulteeId(),
                m.getConsultorId(),
                m.getSpecialization(),
                m.getMeetingTime(),
                m.getMeetingLink());
    }

    @Override
    public List<Meeting> getMeetingsByUserId(Long userId) {
        String sql = "SELECT * FROM meetings WHERE consultee_id = ? OR consultor_id = ? ORDER BY meeting_time ASC";

        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Meeting m = new Meeting();
            m.setId(rs.getLong("id"));
            m.setConsulteeId(rs.getLong("consultee_id"));
            m.setConsultorId(rs.getLong("consultor_id"));
            m.setSpecialization(rs.getString("specialization"));
            m.setMeetingTime(rs.getTimestamp("meeting_time").toLocalDateTime());
            m.setMeetingLink(rs.getString("meeting_link"));
            m.setStatus(rs.getString("status"));
            return m;
        }, userId, userId);
    }
    @Override
	public void updateStatus(Long id, String status){
	    String sql = "UPDATE meetings SET status=? WHERE id=?";
	    jdbcTemplate.update(sql, status, id);
	}
    @Override
    public Meeting getMeetingById(Long id) {

        String sql = "SELECT * FROM meetings WHERE id = ?";

        List<Meeting> list = jdbcTemplate.query(sql, (rs, rowNum) -> {

            Meeting m = new Meeting();
            m.setId(rs.getLong("id"));
            m.setConsulteeId(rs.getLong("consultee_id"));
            m.setConsultorId(rs.getLong("consultor_id"));
            m.setSpecialization(rs.getString("specialization"));
            m.setMeetingTime(rs.getTimestamp("meeting_time").toLocalDateTime());
            m.setMeetingLink(rs.getString("meeting_link"));
            m.setStatus(rs.getString("status"));

            return m;

        }, id);

        return list.isEmpty() ? null : list.get(0);
    }

}
