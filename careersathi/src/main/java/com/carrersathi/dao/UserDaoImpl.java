package com.carrersathi.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.carrersathi.entities.User;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int saveUser(User user) {
		String sql = "INSERT INTO users (name, email, phone_no, password, role, specialization, experience) VALUES (?, ?, ?, ?, ?, ?, ?)";
		return jdbcTemplate.update(
								   sql,
								   user.getName(),
								   user.getEmail(),
								   user.getPhoneNo(),
								   user.getPassword(),
								   user.getRole(),
								   user.getSpecialization(),
								   user.getExperience()
								   );
	}

	@Override
	public User getUserByEmailOrPhone(String email,String phone) {
		String sql = "SELECT * FROM users WHERE email = ? OR phone_no = ?";
		List<User>users= jdbcTemplate.query(
											sql,
											(rs,rowNum)->{
												User user = new User();
												user.setId(rs.getLong("id"));
									            user.setName(rs.getString("name"));
									            user.setEmail(rs.getString("email"));
									            user.setPhoneNo(rs.getString("phone_no"));
									            user.setPassword(rs.getString("password"));
									            user.setRole(rs.getString("role"));
									            user.setSpecialization(rs.getString("specialization"));
									            user.setExperience(rs.getInt("experience"));
									            return user;
											},
											email,phone
										  );
		return users.isEmpty() ? null : users.get(0);
		
	}
	@Override
	public User getRandomConsultorBySpecialization(String specialization) {

	    String sql = """
	        SELECT * FROM users
	        WHERE role = 'CONSULTOR'
	        AND specialization = ?
	        ORDER BY RANDOM()
	        LIMIT 1
	    """;

	    List<User> users = jdbcTemplate.query(sql, (rs, rowNum) -> {

	        User user = new User();

	        user.setId(rs.getLong("id"));
	        user.setName(rs.getString("name"));
	        user.setEmail(rs.getString("email"));
	        user.setPhoneNo(rs.getString("phone_no"));
	        user.setPassword(rs.getString("password"));
	        user.setRole(rs.getString("role"));
	        user.setSpecialization(rs.getString("specialization"));
	        user.setExperience(rs.getInt("experience"));

	        return user;

	    }, specialization);

	    return users.isEmpty() ? null : users.get(0);
	}

}
