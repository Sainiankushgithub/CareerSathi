<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User</title>

  <!-- Bootstrap link  -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@300;400;700&display=swap" rel="stylesheet" />

  <!-- Font Awesome CDN  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- CSS link  -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css">
  <style>
.brand-main {
	color: #ffffff;
}

.brand-accent {
	color: #ffc107;
}
</style>
</head>

<body>


  <section class="sign-in">
    <div class="container pt-5 text-center">
      <div class="row rounded g-0 mt-5">
        <div class="col-lg-6 d-none d-lg-block">
          <img class="img-fluid w-100 h-100 bg-color-col1" src="${pageContext.request.contextPath}/image/signup.png" alt="">
        </div>
        <div class="col-lg-6 col-sm-12 col-md-12 text-center pt-5 pb-3 bg-color-col2 ">
          <h1><span class="brand-main">Career</span><span class="brand-accent">Saathi</span></h1>
          <p class="fw-light mt-3 px-4" style="word-spacing: 2px;">
            Welcome to CarrerSathi – a platform designed to bridge seekers of knowledge with experienced professionals.
            Choose your path: sign up as a Consultee to get expert help, or become a Consultant to offer your skills and
            grow your network.
          </p>
          <a class="btn btn-outline-light btn-lg" href="${pageContext.request.contextPath}/signupconsultee"><i class="fa-solid fa-user fa-fade me-2"></i>Signup as a Consultee</a>
          <h5 class="mt-2">or</h5>
          <a class="btn btn-outline-light btn-lg" href="${pageContext.request.contextPath}/signupconsultor"><i class="fa-solid fa-user-graduate fa-fade me-2"></i>Signup as a Consultor</a>
          <hr class="mt-4"  style="border: 2px solid gray; width: 90%; margin: 0 auto;">
          <p class="text-start mt-3 ps-5">social</p>
          <p class="text-start mt-1 ps-5 fs-5">Follow us for the latest updates </p>
          <p class="text-center">
            <a class="text-white px-2" href=""><i class="fab fa-facebook-f fs-4 pe-2"></i></a>
            <a class="text-white px-2" href=""><i class="fab fa-twitter fs-4 pe-2"></i></a>
            <a class="text-white px-2" href=""><i class="fab fa-instagram fs-4 pe-2"></i></a>
            <a class="text-white px-2" href=""><i class="fab fa-linkedin fs-4 pe-2"></i></a>
          </p>
        </div>
      </div>
      </div>
  </section>


  
  <!-- Bootstrap link  -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>