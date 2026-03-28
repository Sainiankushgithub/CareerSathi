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
      rel="stylesheet"
    />
    <!-- Custom CSS -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <!-- Bootstrap Icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
    />
  </head>
  <body>
    <!-- Navigation Bar -->
    <%request.setAttribute("activePage", "contact"); %>
    <jsp:include page="navbar.jsp"></jsp:include>


    <!-- Contact Section -->
    <!-- Contact Section -->
    <section id="contact" class="contact-section py-5" style="margin-top: 30px;">
      <div class="container py-4">
        <h2 class="text-center mb-4 fw-bold text-dark">
          Partnering in Your Journey
        </h2>
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <div class="contact-form-wrapper shadow-lg">
              <h2 class="text-center mb-4 fw-bold text-dark">Get in Touch</h2>
              <form>
                <div class="row g-3">
                  <div class="col-md-6">
                    <div class="form-floating">
                      <input type="text" class="form-control" id="name" placeholder="Your Name" required>
                      <label for="name">Your Name</label>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-floating">
                      <input type="email" class="form-control" id="email" placeholder="Your Email" required>
                      <label for="email">Your Email</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating">
                      <input type="text" class="form-control" id="subject" placeholder="Subject" required>
                      <label for="subject">Subject</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating">
                      <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 100px" required></textarea>
                      <label for="message">Message</label>
                    </div>
                  </div>
                  <div class="col-12 text-center mt-4">
                    <button class="btn btn-warning btn-lg px-5 rounded-pill fw-bold" type="submit">Send Message</button>
                  </div>
                </div>
              </form>
            </div>

            <div class="text-center mt-5">
              <h5 class="text-dark mb-4">Connect With Us</h5>
              <div class="social-links d-flex justify-content-center gap-3">
                <a href="#" class="social-btn"><i class="bi bi-facebook"></i></a>
                <a href="#" class="social-btn"><i class="bi bi-twitter-x"></i></a>
                <a href="#" class="social-btn"><i class="bi bi-instagram"></i></a>
                <a href="#" class="social-btn"><i class="bi bi-linkedin"></i></a>
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
            <p class="mb-4" style="color: #cccccc;">
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
              <li><a href="index.html#whatwedo" class="footer-link">What We Do</a></li>
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

          <!-- Newsletter (Optional/Simple) -->
          <div class="col-lg-3 col-md-6">
            <h5 class="footer-title">Stay Updated</h5>
            <p class="small" style="color: #cccccc;">
              Subscribe to get latest career tips and updates.
            </p>
            <div class="d-flex gap-2">
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
          <div class="row align-items-center">
            <div class="col-md-12">
              <p class="mb-0">&copy; 2026 CareerSaathi. All rights reserved.</p>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS -->
     <script src="/js/script.js"></script>
  </body>
</html>