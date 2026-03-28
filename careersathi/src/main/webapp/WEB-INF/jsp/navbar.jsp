<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.carrersathi.entities.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Navbar</title>

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

	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container-fluid">

			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/home"> <span
				style="color: #fff">Career</span> <span style="color: #ffc107">Saathi</span>
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">

				<ul class="navbar-nav">
					<li class="nav-item"><a
						class="nav-link ${activePage == 'home' ? 'active' : ''}"
						href="${pageContext.request.contextPath}/home">Home</a></li>

					<li class="nav-item"><a
						class="nav-link ${activePage == 'about' ? 'active' : ''}"
						href="${pageContext.request.contextPath}/about">About</a></li>

					<li class="nav-item"><a
						class="nav-link ${activePage == 'whatwedo' ? 'active' : ''}"
						href="${pageContext.request.contextPath}/whatwedo">What We Do</a>
					</li>

					<li class="nav-item"><a
						class="nav-link ${activePage == 'contact' ? 'active' : ''}"
						href="${pageContext.request.contextPath}/contactus">Contact Us</a>
					</li>
				</ul>

				<ul class="navbar-nav ms-auto align-items-center">

					<%
				User user = (User) session.getAttribute("user");
				%>

					<% if (user == null) { %>

					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/login"
						class="btn btn-auth login">Login</a></li>

					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/signup"
						class="btn btn-auth signup">Sign Up</a></li>

					<% } else { %>

					<li class="nav-item dropdown"><a
						class="dropdown-toggle d-flex align-items-center gap-2 text-white text-decoration-none"
						href="javascript:void(0);" role="button" data-bs-toggle="dropdown"
						aria-expanded="false"> <img
							src="https://api.dicebear.com/7.x/personas/svg?seed=<%= user.getName() %>"
							alt="profile"
							style="width: 40px; height: 40px; border-radius: 50%; border: 2px solid #ffc107;" />

							<span><%= user.getName() %></span>
					</a>

						<ul class="dropdown-menu dropdown-menu-end">
							<li><a class="dropdown-item"
								href="/profile">Profile</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/logout">Logout</a></li>
						</ul></li>

					<% } %>

				</ul>

			</div>
		</div>
	</nav>

	<!-- Custom JS -->
	<script src="/js/script.js"></script>

</body>
</html>