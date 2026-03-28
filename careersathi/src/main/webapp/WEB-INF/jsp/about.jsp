<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
#﻿<!doctype html>
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
    <%request.setAttribute("activePage", "about"); %>
    <jsp:include page="navbar.jsp"></jsp:include>

    <!-- About Section -->
    <section id="about" class="about-section py-5" style="margin-top: 80px;">
      <div class="container">
        <div class="row align-items-center mb-5">
          <div class="col-lg-6 mb-4 mb-lg-0">
            <div class="about-image-wrapper">
              <img
                src="https://images.pexels.com/photos/3184418/pexels-photo-3184418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                alt="About CareerSaathi Team"
                class="img-fluid rounded-4 shadow-lg about-main-img"
              />
              <div class="experience-badge bounce-anim">
                <span class="years">10+</span>
                <span class="text">Years<br />Experience</span>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="about-content ps-lg-4">
              <h5 class="text-warning text-uppercase fw-bold mb-3">
                Who We Are
              </h5>
              <h2 class="display-5 fw-bold mb-4 text-dark">
                Empowering Your Future with Expert Guidance
              </h2>
              <p class="lead text-secondary mb-4">
                At CareerSaathi, we bridge the gap between your dreams and
                reality. Our mission is to provide personalized, data-driven
                career coaching to students and professionals.
              </p>
              <p class="text-secondary mb-4">
                Founded by alumni of top global universities, we understand the
                complexities of modern education and career paths. Whether it's
                choosing the right stream, applying to Ivy League colleges, or
                switching careers, we are your trusted partner.
              </p>
              
              <div class="row g-4 mb-4">
                <div class="col-sm-6">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-warning text-dark me-3">
                      <i class="bi bi-people-fill fs-4"></i>
                    </div>
                    <div>
                      <h5 class="mb-0 fw-bold">5000+</h5>
                      <small class="text-muted">Students Counseled</small>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-warning text-dark me-3">
                      <i class="bi bi-award-fill fs-4"></i>
                    </div>
                    <div>
                      <h5 class="mb-0 fw-bold">98%</h5>
                      <small class="text-muted">Success Rate</small>
                    </div>
                  </div>
                </div>
              </div>

              <a href="contactUs.html" class="btn btn-dark btn-lg px-4 rounded-pill">
                Meet Our Experts
              </a>
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
              <li><a href="#" class="footer-link">About Us</a></li>
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
            <p class="text-secondary small">
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