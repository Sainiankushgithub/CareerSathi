package com.carrersathi.dao;

import com.carrersathi.entities.User;

public interface UserDao {
	int saveUser(User user);
	User getUserByEmailOrPhone(String email,String phone);
	User getRandomConsultorBySpecialization(String specialization);
}
