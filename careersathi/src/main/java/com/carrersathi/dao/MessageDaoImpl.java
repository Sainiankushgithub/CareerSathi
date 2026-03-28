package com.carrersathi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.carrersathi.entities.Message;

@Repository
public class MessageDaoImpl implements MessageDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 🔥 1. SAVE MESSAGE
    @Override
    public int saveMessage(Message m) {

        String sql = "INSERT INTO messages (meeting_id, sender_id, sender_name, message, status, created_at) VALUES (?, ?, ?, ?, ?, ?)";

        return jdbcTemplate.update(sql,
                m.getMeetingId(),
                m.getSenderId(),
                m.getSenderName(),   // ✅ FIX ADDED
                m.getMessage(),
                m.getStatus(),
                m.getCreatedAt()
        );
    }

    // 🔥 2. GET MESSAGES BY MEETING ID
    @Override
    public List<Message> getAllMessages() {

        String sql = "SELECT * FROM messages ORDER BY created_at ASC";

        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Message m = new Message();
            m.setId(rs.getLong("id"));
            m.setSenderId(rs.getLong("sender_id"));
            m.setSenderName(rs.getString("sender_name"));
            m.setMessage(rs.getString("message"));
            m.setStatus(rs.getString("status"));

            if (rs.getTimestamp("created_at") != null) {
                m.setCreatedAt(rs.getTimestamp("created_at").toLocalDateTime());
            }

            return m;
        });
    }

    // 🔥 3. UPDATE MESSAGE STATUS
    @Override
    public void updateMessageStatus(Long messageId, String status) {

        String sql = "UPDATE messages SET status=? WHERE id=?";

        jdbcTemplate.update(sql, status, messageId);
    }
}