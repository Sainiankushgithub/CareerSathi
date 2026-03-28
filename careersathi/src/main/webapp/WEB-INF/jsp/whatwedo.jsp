<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>What We Do | CareerSaathi</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />

  <!-- Bootstrap Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<body>

<!-- NAVBAR -->
<%request.setAttribute("activePage", "whatwedo"); %>
    <jsp:include page="navbar.jsp"></jsp:include>

<!-- HERO -->
<section class="about-section py-5" style="margin-top:90px;">
  <div class="container text-center">
    <h5 class="text-warning fw-bold text-uppercase">Our Expertise</h5>
    <h1 class="display-5 fw-bold mt-3">
      Career Decisions Are Hard.<br>
      We Make Them Clear.
    </h1>
    <p class="lead text-secondary mt-4">
      CareerSaathi exists to remove confusion, misinformation, and anxiety from
      academic and career choices — with expert guidance at every step.
    </p>
  </div>
</section>

<!-- WHY CAREERSAATHI -->
<section class="about-section py-5 bg-light">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 mb-4">
        <h3 class="fw-bold mb-3">Why CareerSaathi?</h3>
        <p class="text-secondary">
          Students today are overwhelmed by choices — courses, colleges,
          competitive exams, careers, and countries. Most decisions are made
          based on pressure, trends, or incomplete information.
        </p>
        <p class="text-secondary">
          We step in as a <strong>trusted guide</strong> — combining data,
          experience, and mentorship — so you don’t waste years correcting
          the wrong decisions.
        </p>
      </div>

      <div class="col-lg-6">
        <div class="row g-4">
          <div class="col-6">
            <div class="testimonial-card text-center">
              <h4 class="fw-bold text-warning">5000+</h4>
              <p class="text-secondary mb-0">Students Guided</p>
            </div>
          </div>
          <div class="col-6">
            <div class="testimonial-card text-center">
              <h4 class="fw-bold text-warning">98%</h4>
              <p class="text-secondary mb-0">Success Rate</p>
            </div>
          </div>
          <div class="col-6">
            <div class="testimonial-card text-center">
              <h4 class="fw-bold text-warning">30+</h4>
              <p class="text-secondary mb-0">Career Paths Covered</p>
            </div>
          </div>
          <div class="col-6">
            <div class="testimonial-card text-center">
              <h4 class="fw-bold text-warning">Global</h4>
              <p class="text-secondary mb-0">Opportunities</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- SERVICES -->
<section class="testimonials-section py-5">
  <div class="container">
    <h2 class="fw-bold text-center mb-5">What We Actually Do</h2>

    <div class="row g-4">
      <div class="col-md-6 col-lg-4">
        <div class="testimonial-card">
          <i class="bi bi-compass fs-1 text-warning mb-3"></i>
          <h5 class="fw-bold">Career Counseling</h5>
          <p class="text-secondary">
            One-on-one guidance to identify strengths, interests, and long-term
            career direction using structured assessments.
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-4">
        <div class="testimonial-card">
          <i class="bi bi-mortarboard fs-1 text-warning mb-3"></i>
          <h5 class="fw-bold">College & Course Planning</h5>
          <p class="text-secondary">
            Choosing the right course and college — in India or abroad — with
            clarity, realism, and future scope in mind.
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-4">
        <div class="testimonial-card">
          <i class="bi bi-globe fs-1 text-warning mb-3"></i>
          <h5 class="fw-bold">Study Abroad Consulting</h5>
          <p class="text-secondary">
            From university shortlisting and SOPs to visas and scholarships —
            we handle the entire journey.
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-4">
        <div class="testimonial-card">
          <i class="bi bi-journal-text fs-1 text-warning mb-3"></i>
          <h5 class="fw-bold">Competitive Exam Strategy</h5>
          <p class="text-secondary">
            Structured preparation plans for JEE, NEET, CAT, GRE, GMAT,
            IELTS, and other exams.
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-4">
        <div class="testimonial-card">
          <i class="bi bi-award fs-1 text-warning mb-3"></i>
          <h5 class="fw-bold">Scholarship & Financial Guidance</h5>
          <p class="text-secondary">
            Identifying scholarships, funding options, and education loans
            to make quality education affordable.
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-4">
        <div class="testimonial-card">
          <i class="bi bi-people fs-1 text-warning mb-3"></i>
          <h5 class="fw-bold">Long-Term Mentorship</h5>
          <p class="text-secondary">
            We don’t disappear after one session. We stay with you as your
            career evolves.
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CTA -->
<section class="contact-section py-5">
  <div class="container">
    <h2 class="fw-bold mb-4">Your Career Deserves Better Decisions</h2>
    <p class="contact-text mb-4">
      Don’t let confusion or pressure decide your future.
      Talk to experts who actually understand the system.
    </p>
    <a href="${pageContext.request.contextPath}/bookconsultation" class="btn-contact-lg">
      Book a Free Consultation
    </a>
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
        <p class="text-secondary mb-4">
          Empowering students to achieve their dreams through expert
          guidance and personalized career counseling.
        </p>
      </div>

      <!-- Quick Links -->
      <div class="col-lg-2 col-md-6">
        <h5 class="footer-title">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="index.html" class="footer-link">Home</a></li>
          <li><a href="about.html" class="footer-link">About Us</a></li>
          <li><a href="whatwedo.html" class="footer-link">What We Do</a></li>
          <li><a href="index.html#resources" class="footer-link">Resources</a></li>
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

      <!-- Newsletter -->
      <div class="col-lg-3 col-md-6">
        <h5 class="footer-title">Stay Updated</h5>
        <p class="text-secondary small">
          Subscribe to get latest career tips and updates.
        </p>
        <div class="input-group">
          <input
            type="text"
            class="form-control"
            placeholder="Email Address"
          />
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
      <p class="mb-0">&copy; 2026 CareerSaathi. All rights reserved.</p>
    </div>
  </div>
</footer>


<!-- SCRIPTS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/script.js"></script>

<script>
  // Ensure sections are visible on this page
  document.querySelectorAll("section").forEach(section => {
    section.classList.add("visible");
  });
</script>

</body>
</html>
