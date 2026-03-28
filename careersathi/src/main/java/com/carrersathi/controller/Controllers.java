package com.carrersathi.controller;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.carrersathi.dao.MeetingDao;
import com.carrersathi.dao.MessageDao;
import com.carrersathi.dao.UserDao;
import com.carrersathi.entities.Meeting;
import com.carrersathi.entities.Message;
import com.carrersathi.entities.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class Controllers {
	@Autowired
	private UserDao userDao;
	@Autowired
	private MeetingDao meetingDao;
	@Autowired
	private MessageDao messageDao;
	
	
	@GetMapping("/")
	public String root() {
		return "home";
	}

	@GetMapping("/home")
	public String home() {
		return "home";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/whatwedo")
	public String whatwedo() {
		return "whatwedo";
	}

	@GetMapping("/contactus")
	public String contactus() {
		return "contactus";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@GetMapping("/signupconsultee")
	public String signUpConsultee() {
		return "signupconsultee";
	}

	@GetMapping("/signupconsultor")
	public String signUpConsultor() {
		return "signupconsultor";
	}

	@PostMapping("/processformconsultee")
	public String signupconsulteeform(@RequestParam String name, @RequestParam String email,
			@RequestParam String phone_no, @RequestParam String password, Model model, HttpSession session) {
		String emailRegex = "^[A-Za-z0-9._%+-]+@gmail\\.com$";
		String phoneRegex = "^[6-9][0-9]{9}$";
		if (!email.matches(emailRegex)) {
			model.addAttribute("error", "Invalid email address!");
			return "signupconsultee";
		}
		if (!phone_no.matches(phoneRegex)) {
			model.addAttribute("error", "Invalid phone number!");
			return "signupconsultee";
		}
		User user1 = userDao.getUserByEmailOrPhone(email, phone_no);
		if (user1 != null) {
			model.addAttribute("error", "User already exist!");
			return "signupconsultee";
		}
		try {
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhoneNo(phone_no);
			user.setPassword(password);
			user.setRole("CONSULTEE");
			// model.addAttribute("user", user);
			int result = userDao.saveUser(user);

			if (result > 0) {
			    // ✅ FETCH USER AGAIN FROM DB (IMPORTANT)
			    User savedUser = userDao.getUserByEmailOrPhone(email, phone_no);

			    session.setAttribute("user", savedUser); // ✅ FIX
			    session.setAttribute("success", "Signup successful!");

			    return "redirect:/home";
			} else {
				model.addAttribute("error", "user cannot be saved\n Server Side error. . . ");
				return "error";
			}

		} catch (Exception e) {
			System.out.println("Exception : " + e);
			model.addAttribute("error", e.getMessage());
			return "error";
		}

	}

	@PostMapping("/processformconsultor")
	public String signupconsultorForm(@RequestParam String name, @RequestParam String email,
			@RequestParam String phone_no, @RequestParam String password, @RequestParam String specialization,
			@RequestParam Integer experience, Model model, HttpSession session) {
		String emailRegex = "^[A-Za-z0-9._%+-]+@gmail\\.com$";
		String phoneRegex = "^[6-9][0-9]{9}$";
		if (!email.matches(emailRegex)) {
			model.addAttribute("error", "Invalid email address!");
			return "signupconsultor";
		}
		if (!phone_no.matches(phoneRegex)) {
			model.addAttribute("error", "Invalid phone number!");
			return "signupconsultor";
		}
		User user1 = userDao.getUserByEmailOrPhone(email, phone_no);
		if (user1 != null) {
			model.addAttribute("error", "User already exist!");
			return "signupconsultor";
		}
		try {
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhoneNo(phone_no);
			user.setPassword(password);
			user.setSpecialization(specialization);
			user.setExperience(experience);
			user.setRole("CONSULTOR");

			int result = userDao.saveUser(user);

			if (result > 0) {

			    // ✅ FETCH USER AGAIN FROM DB
			    User savedUser = userDao.getUserByEmailOrPhone(email, phone_no);

			    session.setAttribute("user", savedUser); // ✅ FIX
			    session.setAttribute("success", "Signup successful!");

			    return "redirect:/home";
			} else {
				model.addAttribute("error", "something went wrong on the server side");
				return "error";
			}

		} catch (Exception e) {
			System.out.println("Exception : " + e);
			model.addAttribute("error", e.getMessage());
			return "error";
		}
	}

	@PostMapping("/processloginform")
	public String prcoessloginform(@RequestParam String emailOrPhone, @RequestParam String password,
			@RequestParam String role, HttpSession session, Model model) {
		User user = userDao.getUserByEmailOrPhone(emailOrPhone, emailOrPhone);
		if (user == null) {
			model.addAttribute("error", "User not found!");
			return "login";
		}
		try {
			if (!user.getPassword().equals(password)) {
				model.addAttribute("error", "Invalid password!");
				return "login";
			}
			if (!user.getRole().equalsIgnoreCase(role)) {
				model.addAttribute("error", "Invalid role selected!");
				return "login";
			}
			session.setAttribute("user", user);
			session.setAttribute("success", "Login successful!");
			return "redirect:/home";

		} catch (Exception e) {
			System.out.println("Exception : " + e);
			model.addAttribute("error", e.getMessage());
			return "error";
		}
	}

	private String convertTo24Hour(String time) {

		DateTimeFormatter input = DateTimeFormatter.ofPattern("h:mm a");
		DateTimeFormatter output = DateTimeFormatter.ofPattern("HH:mm:ss");

		return LocalTime.parse(time, input).format(output);
	}

	@PostMapping("/bookingConsultation")
	public String bookingMeeting(@RequestParam String specialization, @RequestParam String date,
			@RequestParam String time, HttpSession session, RedirectAttributes redirectAttributes) {

		User user = (User) session.getAttribute("user");

		// 🔥 FIX 1: Login check
		if (user == null) {
			return "redirect:/login";
		}

		// 🔥 FIX 2: Only CONSULTEE can book
		if (!"CONSULTEE".equalsIgnoreCase(user.getRole())) {
			redirectAttributes.addFlashAttribute("error", "Only consultee can book consultation!");
			return "redirect:/profile";
		}

		try {

			// 🔥 FIX 3: Check active meetings count (LIMIT = 2)
			List<Meeting> meetings = meetingDao.getMeetingsByUserId(user.getId());

			long activeCount = meetings.stream().filter(m -> "SCHEDULED".equalsIgnoreCase(m.getStatus())).count();

			if (activeCount >= 2) {
				redirectAttributes.addFlashAttribute("error", "You can only have 2 active meetings!");
				return "redirect:/profile";
			}

			// Convert time
			String formattedTime = convertTo24Hour(time);
			LocalDateTime meetingDateTime = LocalDateTime.parse(date + "T" + formattedTime);

			// 🔥 FIX 4: prevent past booking (extra safety)
			if (meetingDateTime.isBefore(LocalDateTime.now())) {
				redirectAttributes.addFlashAttribute("error", "Cannot book past time!");
				return "redirect:/bookconsultation";
			}

			// Random consultor
			User consultor = userDao.getRandomConsultorBySpecialization(specialization);

			if (consultor == null) {
				redirectAttributes.addFlashAttribute("error", "No consultor available!");
				return "redirect:/bookconsultation";
			}

			// Create meeting
			String roomId = "room_" + System.currentTimeMillis();

			Meeting m = new Meeting();
			m.setConsulteeId(user.getId());
			m.setConsultorId(consultor.getId());
			m.setSpecialization(specialization);
			m.setMeetingTime(meetingDateTime);
			m.setMeetingLink(roomId);
			m.setStatus("SCHEDULED");

			meetingDao.saveMeeting(m);

			redirectAttributes.addFlashAttribute("success", "Consultation booked successfully!");

		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "Something went wrong!");
		}

		return "redirect:/profile";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
		session.invalidate();
		redirectAttributes.addFlashAttribute("success", "logged out successfully!");
		return "redirect:/home";
	}

	@GetMapping("/profile")
	public String profile(HttpSession session, RedirectAttributes redirectAttributes, Model model) {

		User user = (User) session.getAttribute("user");

		if (user == null) {
			redirectAttributes.addFlashAttribute("error", "Oops ! Please login.");
			return "redirect:/login"; // 🔥 FIX (missing /)
		}

		List<Meeting> meetings = meetingDao.getMeetingsByUserId(user.getId());

		// 🔥 FIX: AUTO STATUS UPDATE
		LocalDateTime now = LocalDateTime.now();

		for (Meeting m : meetings) {
			if ("SCHEDULED".equalsIgnoreCase(m.getStatus()) && m.getMeetingTime().plusHours(1).isBefore(now)) {

				m.setStatus("COMPLETED");
				meetingDao.updateStatus(m.getId(), "COMPLETED");
			}
		}

		// 🔥 FIX: CHECK ACTIVE MEETING (to hide booking button)
		boolean hasActiveMeeting = meetings.stream().anyMatch(m -> "SCHEDULED".equalsIgnoreCase(m.getStatus()));

		model.addAttribute("meetings", meetings);
		model.addAttribute("hasActiveMeeting", hasActiveMeeting); // 🔥 FIX

		return "profile";
	}

	@GetMapping("/bookconsultation")
	public String consultation() {
		return "bookconsultation";
	}

	@GetMapping("/joinMeeting")
	public String joinMeeting(@RequestParam String roomId, @RequestParam Long meetingId, HttpSession session,
			RedirectAttributes ra, Model model) {

		User user = (User) session.getAttribute("user");

		if (user == null) {
			return "redirect:/login";
		}

		Meeting meeting = meetingDao.getMeetingById(meetingId);

		if (meeting == null) {
			ra.addFlashAttribute("error", "Meeting not found!");
			return "redirect:/profile";
		}

		LocalDateTime now = LocalDateTime.now();

		// 🔥 FIX 1: block before meeting time
		
//		if (now.isBefore(meeting.getMeetingTime())) {
//			ra.addFlashAttribute("error", "Meeting has not started yet!");
//			return "redirect:/profile";
//		}
		

		// 🔥 FIX 2: block after meeting ends (1 hour window)
		if (now.isAfter(meeting.getMeetingTime().plusHours(1))) {
			ra.addFlashAttribute("error", "Meeting already ended!");
			return "redirect:/profile";
		}

		// 🔥 pass data to JSP
		model.addAttribute("roomId", meeting.getMeetingLink());
		model.addAttribute("userName", user.getName());
		model.addAttribute("userId", user.getId());

		return "meeting-room"; // JSP
	}

	@GetMapping("/test")
	public String test(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		return "test";
	}
	
//	Messages 
	// ✅ SEND MESSAGE
	@PostMapping("/sendMessage")
	@ResponseBody
	public String sendMessage(@RequestParam String message,
	                         HttpSession session) {

	    User user = (User) session.getAttribute("user");

	    Message m = new Message();

	    // ❌ REMOVE meetingId
	    // m.setMeetingId(meetingId);

	    m.setSenderId(user.getId());
	    m.setSenderName(user.getName());
	    m.setMessage(message);
	    m.setStatus("SENT");
	    m.setCreatedAt(LocalDateTime.now());

	    messageDao.saveMessage(m);

	    return "ok";
	}

	// ✅ GET MESSAGES
	@GetMapping("/getMessages")
	@ResponseBody
	public List<Message> getMessages() {

	    return messageDao.getAllMessages(); // ✅ FIX
	}
}
