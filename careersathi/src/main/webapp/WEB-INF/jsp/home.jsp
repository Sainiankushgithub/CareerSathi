<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>CareerSaathi</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
</head>
<body>
	<!-- Navigation Bar -->
	<%
	request.setAttribute("activePage", "home");
	%>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- Image Carousel Section -->
	<section class="carousel-section">
		<div id="carouselServices" class="carousel slide"
			data-bs-ride="carousel" data-bs-interval="4000">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselServices"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Career Counseling"></button>
				<button type="button" data-bs-target="#carouselServices"
					data-bs-slide-to="1" aria-label="College Admission Guidance"></button>
				<button type="button" data-bs-target="#carouselServices"
					data-bs-slide-to="2" aria-label="Study Abroad Consultation"></button>
				<button type="button" data-bs-target="#carouselServices"
					data-bs-slide-to="3" aria-label="Scholarship Guidance"></button>
				<button type="button" data-bs-target="#carouselServices"
					data-bs-slide-to="4" aria-label="Exam Preparation Advice"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://images.pexels.com/photos/5905962/pexels-photo-5905962.jpeg?auto=compress&cs=tinysrgb&w=1200"
						class="d-block w-100" alt="Career Counseling" />
					<div class="carousel-caption">
						<h3>Career Counseling</h3>
						<p>Expert guidance to help you choose the right career path</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/4144923/pexels-photo-4144923.jpeg?auto=compress&cs=tinysrgb&w=1200"
						class="d-block w-100" alt="College Admission Guidance" />
					<div class="carousel-caption">
						<h3>College Admission Guidance</h3>
						<p>Navigate the college admission process with ease</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/2398220/pexels-photo-2398220.jpeg?auto=compress&cs=tinysrgb&w=1200"
						class="d-block w-100" alt="Study Abroad Consultation" />
					<div class="carousel-caption">
						<h3>Skill Development & Courses</h3>
						<p>Learn in-demand skills like DSA, Web Development, and AI</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/3228727/pexels-photo-3228727.jpeg?auto=compress&cs=tinysrgb&w=1200"
						class="d-block w-100" alt="Scholarship Guidance" />
					<div class="carousel-caption">
						<h3>IT & Software Career Guidance</h3>
						<p>Explore roles like Software Engineer, Data Analyst, AI
							Engineer, and more</p>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/4145153/pexels-photo-4145153.jpeg?auto=compress&cs=tinysrgb&w=1200"
						class="d-block w-100" alt="Exam Preparation Advice" />
					<div class="carousel-caption">
						<h3>Exam Preparation Advice</h3>
						<p>Strategic tips and guidance for all competitive exams</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselServices" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselServices" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>

	<!-- Testimonials Section -->
	<section class="testimonials-section py-5">
		<div class="container">
			<h2 class="testimonials-title mb-5">Student Success Stories</h2>
			<div class="row g-4">
				<!-- Testimonial Card 1 -->
				<div class="col-md-6 col-lg-4">
					<div class="testimonial-card">
						<div class="testimonial-header">
							<img
								src="https://images.pexels.com/photos/3807517/pexels-photo-3807517.jpeg?auto=compress&cs=tinysrgb&w=400"
								alt="Student 1" class="student-avatar" />
							<div class="student-info">
								<h5 class="student-name">Ankush saini</h5>
								<p class="student-title">KIIT Student</p>
							</div>
						</div>
						<div class="rating">
							<span class="stars">★★★★★</span> <span class="rating-text">5.0/5.0</span>
						</div>
						<p class="testimonial-text">"CareerSaathi helped me navigate
							my college admission process smoothly. The guidance was
							invaluable and I got admitted to my dream college!"</p>
						<span class="feedback-tag">College Admission Guidance</span>
					</div>
				</div>

				<!-- Testimonial Card 2 -->
				<div class="col-md-6 col-lg-4">
					<div class="testimonial-card">
						<div class="testimonial-header">
							<img
								src="https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=400"
								alt="Student 2" class="student-avatar" />
							<div class="student-info">
								<h5 class="student-name">Ayush</h5>
								<p class="student-title">Jammu & Kashmir</p>
							</div>
						</div>
						<div class="rating">
							<span class="stars">★★★★★</span> <span class="rating-text">5.0/5.0</span>
						</div>
						<p class="testimonial-text">"The IT career guidance was
							exceptional! They helped me choose the right path in software
							development and guided me with the best skills and courses. Best
							decision ever!"</p>
						<span class="feedback-tag">IT & Software development
							guidance</span>
					</div>
				</div>

				<!-- Testimonial Card 3 -->
				<div class="col-md-6 col-lg-4">
					<div class="testimonial-card">
						<div class="testimonial-header">
							<img
								src="https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&w=400"
								alt="Student 3" class="student-avatar" />
							<div class="student-info">
								<h5 class="student-name">Aftab Raza Khan</h5>
								<p class="student-title">KIIT Student</p>
							</div>
						</div>
						<div class="rating">
							<span class="stars">★★★★★</span> <span class="rating-text">5.0/5.0</span>
						</div>
						<p class="testimonial-text">"The exam preparation advice
							really made a difference. Cracked JEE Advanced with their
							guidance and personalized strategies!"</p>
						<span class="feedback-tag">Exam Preparation</span>
					</div>
				</div>

				<!-- Testimonial Card 4 -->
				<div class="col-md-6 col-lg-4">
					<div class="testimonial-card">
						<div class="testimonial-header">
							<img
								src="https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?auto=compress&cs=tinysrgb&w=400"
								alt="Student 4" class="student-avatar" />
							<div class="student-info">
								<h5 class="student-name">Aditya Kumar Singh</h5>
								<p class="student-title">Internship Guidance</p>
							</div>
						</div>
						<div class="rating">
							<span class="stars">★★★★☆</span> <span class="rating-text">4.8/5.0</span>
						</div>
						<p class="testimonial-text">"Thanks to the internship
							guidance, I secured multiple internship opportunities from top
							companies. Highly recommended!"</p>
						<span class="feedback-tag">Internship Guidance</span>
					</div>
				</div>

				<!-- Testimonial Card 5 -->
				<div class="col-md-6 col-lg-4">
					<div class="testimonial-card">
						<div class="testimonial-header">
							<img
								src="https://images.pexels.com/photos/3861969/pexels-photo-3861969.jpeg?auto=compress&cs=tinysrgb&w=400"
								alt="Student 5" class="student-avatar" />
							<div class="student-info">
								<h5 class="student-name">Aragjit</h5>
								<p class="student-title">Career Counseling Success</p>
							</div>
						</div>
						<div class="rating">
							<span class="stars">★★★★★</span> <span class="rating-text">5.0/5.0</span>
						</div>
						<p class="testimonial-text">"Career counseling helped me
							identify my true passion. Now I'm pursuing a career I love with
							confidence!"</p>
						<span class="feedback-tag">Career Counseling</span>
					</div>
				</div>

				<!-- Testimonial Card 6 -->
				<div class="col-md-6 col-lg-4">
					<div class="testimonial-card">
						<div class="testimonial-header">
							<img
								src="https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=400"
								alt="Student 6" class="student-avatar" />
							<div class="student-info">
								<h5 class="student-name">Anand Raj</h5>
								<p class="student-title">Patna , Bihar</p>
							</div>
						</div>
						<div class="rating">
							<span class="stars">★★★★★</span> <span class="rating-text">5.0/5.0</span>
						</div>
						<p class="testimonial-text">"Amazing support throughout my
							journey! From planning my preparation to final exam strategy,
							they guided me at every step professionally. Grateful!"</p>
						<span class="feedback-tag">Exam Strategy & Preparation</span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Resources Section -->
	<section class="resources-section" id="resources">
		<div class="container">
			<h1 class="section-title text-center mb-5"
				style="color: white !important">
				Student <span style="color: white !important">Consultations</span>
			</h1>

			<div class="row g-4">
				<!-- Blogs/Articles Card -->
				<div class="col-md-6 col-lg-3">
					<div class="resource-card">
						<div class="card-img-wrapper">
							<img
								src="https://images.pexels.com/photos/261662/pexels-photo-261662.jpeg?auto=compress&cs=tinysrgb&w=600"
								alt="Blogs and Articles" />
						</div>
						<div class="card-content">
							<div class="icon-box">
								<i class="bi bi-newspaper"></i>
							</div>
							<h3>Career Counseling</h3>
							<p>Deep dives into career counseling, career paths, success
								stories, and industry trends.</p>
							<a href="${pageContext.request.contextPath}/bookconsultation"
								class="btn-read-more">Book Consultation</a>
						</div>
					</div>
				</div>

				<!-- Career Tips Card -->
				<div class="col-md-6 col-lg-3">
					<div class="resource-card">
						<div class="card-img-wrapper">
							<img
								src="https://images.pexels.com/photos/590022/pexels-photo-590022.jpeg?auto=compress&cs=tinysrgb&w=600"
								alt="Career Tips" />
						</div>
						<div class="card-content">
							<div class="icon-box">
								<i class="bi bi-lightbulb"></i>
							</div>
							<h3>Exam Strategy & Preparation</h3>
							<p>Effective strategies, study plans, and expert tips to
								crack competitive exams with confidence.</p>
							<a href="${pageContext.request.contextPath}/bookconsultation"
								class="btn-read-more">Book Consultation</a>
						</div>
					</div>
				</div>

				<!-- Admission Updates Card -->
				<div class="col-md-6 col-lg-3">
					<div class="resource-card">
						<div class="card-img-wrapper">
							<img
								src="https://images.pexels.com/photos/1438081/pexels-photo-1438081.jpeg?auto=compress&cs=tinysrgb&w=600"
								alt="Admission Updates" />
						</div>
						<div class="card-content">
							<div class="icon-box">
								<i class="bi bi-bell"></i>
							</div>
							<h3>Admission Guidance</h3>
							<p>Expert support for college applications, deadlines, and
								the entire admission process.</p>
							<a href="${pageContext.request.contextPath}/bookconsultation"
								class="btn-read-more">Book Consultation</a>
						</div>
					</div>
				</div>

				<!-- Exam Alerts Card -->
				<div class="col-md-6 col-lg-3">
					<div class="resource-card">
						<div class="card-img-wrapper">
							<img
								src="https://images.pexels.com/photos/280222/pexels-photo-280222.jpeg?auto=compress&cs=tinysrgb&w=600"
								alt="Exam Alerts" />
						</div>
						<div class="card-content">
							<div class="icon-box">
								<i class="bi bi-calendar-event"></i>
							</div>
							<h3>Skill Development</h3>
							<p>Enhance your skills with expert guidance on communication,
								problem-solving, and industry-ready abilities.</p>
							<a href="${pageContext.request.contextPath}/bookconsultation"
								class="btn-read-more">Book Consultation</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FAQ Section -->
	<section class="faq-section py-5 bg-light">
		<div class="container">
			<h2 class="text-center mb-5 fw-bold" style="color: #1a1a1a">
				Frequently Asked Questions</h2>
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="accordion" id="faqAccordion">
						<!-- FAQ Item 1 -->
						<div class="accordion-item shadow-sm mb-3">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button collapsed fw-bold" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseOne"
									aria-expanded="false" aria-controls="collapseOne">How
									to book a session?</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse"
								aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
								<div class="accordion-body text-secondary">To book a
									consultation on CareerSathi, the student must first log in to
									their account. After logging in, they can access the booking
									option from either the home page or their profile dashboard.
									The student then fills in details like mentor, date, and time,
									and submits the form to confirm the booking. The consultation
									is saved and appears in their dashboard for further
									interaction.</div>
							</div>
						</div>

						<!-- FAQ Item 2 -->
						<div class="accordion-item shadow-sm mb-3">
							<h2 class="accordion-header" id="headingTwo">
								<button class="accordion-button collapsed fw-bold" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									What is the cost of a session?</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
								<div class="accordion-body text-secondary">
									The CareerSathi platform is currently open source and free of
									cost, meaning users can access and use its features, including
									booking consultations, without paying any fee.<strong>Open-source
										software</strong> typically allows users to use, modify, and share the
									system freely, often at no cost, though optional paid features
									can be added in the future if needed . As of now, CareerSathi
									does not charge any consultation or platform fee, making it
									accessible to all students.
								</div>
							</div>
						</div>

						<!-- FAQ Item 3 -->
						<div class="accordion-item shadow-sm mb-3">
							<h2 class="accordion-header" id="headingThree">
								<button class="accordion-button collapsed fw-bold" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									Is the mode of counseling Online or Offline?</button>
							</h2>
							<div id="collapseThree" class="accordion-collapse collapse"
								aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
								<div class="accordion-body text-secondary">The mode of
									counseling in CareerSathi is completely online. All
									consultations are conducted through a built-in video calling
									feature within the website itself, allowing students and
									mentors to connect remotely without the need for any physical
									meeting. This ensures convenience, accessibility, and seamless
									communication from anywhere.</div>
							</div>
						</div>
						<!-- FAQ Item 4 -->
						<div class="accordion-item shadow-sm mb-3">
							<h2 class="accordion-header" id="headingFour">
								<button class="accordion-button collapsed fw-bold" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseFour"
									aria-expanded="false" aria-controls="collapseFour">
									Who are the career counselors?</button>
							</h2>
							<div id="collapseFour" class="accordion-collapse collapse"
								aria-labelledby="headingFour" data-bs-parent="#faqAccordion">
								<div class="accordion-body text-secondary">
									Our team consists of <strong>certified career
										counselors</strong>, industry experts, and alumni from top universities
									like IITs, IIMs, and Ivy League colleges. They bring years of
									experience and deep domain knowledge to guide you effectively.
								</div>
							</div>
						</div>

						<!-- FAQ Item 6 -->
						<div class="accordion-item shadow-sm mb-3">
							<h2 class="accordion-header" id="headingSix">
								<button class="accordion-button collapsed fw-bold" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseSix"
									aria-expanded="false" aria-controls="collapseSix">Do
									you help with scholarship applications?</button>
							</h2>
							<div id="collapseSix" class="accordion-collapse collapse"
								aria-labelledby="headingSix" data-bs-parent="#faqAccordion">
								<div class="accordion-body text-secondary">Yes, ensuring
									financial feasibility is part of our guidance. We assist you in
									identifying relevant scholarships, financial aid programs, and
									education loans that suit your profile and ensure you have the
									best chance of securing funding.</div>
							</div>
						</div>

						<!-- FAQ Item 7 -->
						<div class="accordion-item shadow-sm mb-3">
							<h2 class="accordion-header" id="headingSeven">
								<button class="accordion-button collapsed fw-bold" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseSeven"
									aria-expanded="false" aria-controls="collapseSeven">
									Can I change my counselor if I'm not satisfied?</button>
							</h2>
							<div id="collapseSeven" class="accordion-collapse collapse"
								aria-labelledby="headingSeven" data-bs-parent="#faqAccordion">
								<div class="accordion-body text-secondary">Your
									satisfaction is our priority. If you feel that your counselor
									is not the right fit for you, you can request a change after
									the first session. We will assign a senior mentor to review
									your case and ensure your needs are met.</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- Footer Section -->
	<footer class="footer pt-5">
		<div class="container">
			<div class="row g-4">
				<!-- Brand Info -->
				<div class="col-lg-4 col-md-6">
					<h4 class="footer-title">
						Career<span class="text-warning">Saathi</span>
					</h4>
					<p class="mb-4" style="color: #cccccc;">Empowering students to
						achieve their dreams through expert guidance and personalized
						career counseling.</p>
				</div>

				<!-- Quick Links -->
				<div class="col-lg-2 col-md-6">
					<h5 class="footer-title">Quick Links</h5>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/home" class="footer-link">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/about" class="footer-link">About Us</a></li>
						<li><a href="${pageContext.request.contextPath}/whatwedo" class="footer-link">What We
								Do</a></li>
						<li><a href="${pageContext.request.contextPath}/bookconsultation" class="footer-link">Consultations</a></li>
					</ul>
				</div>

				<!-- Legal -->
				<div class="col-lg-3 col-md-6">
					<h5 class="footer-title">Legal</h5>
					<ul class="list-unstyled">
						<li><a href="#" class="footer-link">Privacy Policy</a></li>
						<li><a href="#" class="footer-link">Terms & Conditions</a></li>
						<li><a href="#" class="footer-link">Cookie Policy</a></li>
					</ul>
				</div>

				<!-- Newsletter (Optional/Simple) -->
				<div class="col-lg-3 col-md-6">
					<h5 class="footer-title">Stay Updated</h5>
					<p class="small" style="color: #cccccc;">Subscribe to get
						latest career tips and updates.</p>
					<div class="d-flex gap-2">
						<input type="text" class="form-control"
							placeholder="Email Address" />
						<button class="btn btn-warning" type="button">
							<i class="bi bi-send-fill"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Copyright -->
		<div class="footer-bottom text-center">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-12">
						<p class="mb-0">&copy; 2026 CareerSaathi. All rights reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
		var success = "${success}";
		if (success && success.trim().length > 0) {
			Swal.fire({
				icon : "success",
				title : "Welcome",
				text : success,
				timer : 2000,
				showConfirmButton : false
			});
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Custom JS -->
	<script src="/js/script.js"></script>

</body>
</html>