<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<h1>Registration Details</h1>
			<h4>Name : ${user.name}</h4>
			<h4>Email : ${user.email }</h4>
			<h4>Phone Number : ${user.phoneNo}</h4>
			<h4>Password : ${user.password }</h4>
			<h4>Specialization : ${user.specialization }</h4>
			<h4>Experience : ${user.experience}</h4>
			<h4>Role : ${user.role }</h4>
</body>
</html>