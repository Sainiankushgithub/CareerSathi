package com.carrersathi.dao;

import java.util.List;
import com.carrersathi.entities.Message;

public interface MessageDao {

    int saveMessage(Message message);

    List<Message> getAllMessages();

    void updateMessageStatus(Long messageId, String status);
}