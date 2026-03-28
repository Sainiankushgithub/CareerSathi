<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Consultation | CareerSaathi</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style3.css" />
<style>
body {
    color: white !important;
    font-family: 'Segoe UI', sans-serif;
}
</style>

</head>

<body>

<!-- NAVBAR -->
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container-box">

    <h2 class="title text-center text-white">
        Book <span class="text-accent">Consultation</span>
    </h2>

    <p class="text-center text-white mb-4">
        Choose your preferred time and get expert guidance
    </p>

    <!-- FORM -->
    <form action="bookingConsultation" method="post">

        <!-- Consultation Type -->
        <div class="mb-4">
            <label class="form-label text-white">Select Consultation Type</label>
            <select class="form-select" name="specialization" required>
                <option value="">-- Select --</option>
                <option>Career Counseling</option>
                <option>Internship Guidance</option>
                <option>College Admission Guidance</option>
                <option>IT & Software Career Guidance</option>
                <option>Skill Development & Courses</option>
                <option>Resume & Interview Preparation</option>
                <option>Exam Strategy & Preparation</option>
            </select>
        </div>

        <!-- Date -->
        <div class="mb-4">
            <label class="form-label text-white">Select Date</label>
            <input type="date" class="form-control" name="date" required min="<%= java.time.LocalDate.now() %>">
        </div>

        <!-- Hidden input for selected time -->
        <input type="hidden" name="time" id="selectedTime">

        <!-- Time Slots -->
        <div class="mb-4">
            <label class="form-label text-white">Select Time</label>

            <div class="row g-3 mt-2 text-white">

                <div class="col-4">
                    <div class="time-slot">10:00 AM</div>
                </div>

                <div class="col-4">
                    <div class="time-slot">11:00 AM</div>
                </div>

                <div class="col-4">
                    <div class="time-slot">12:00 PM</div>
                </div>

                <div class="col-4">
                    <div class="time-slot">2:00 PM</div>
                </div>

                <div class="col-4">
                    <div class="time-slot">3:00 PM</div>
                </div>

                <div class="col-4">
                    <div class="time-slot">4:00 PM</div>
                </div>

            </div>
        </div>

        <!-- Button -->
        <button type="submit" class="btn-book mt-3">
            Confirm Booking
        </button>

    </form>

</div>
<!-- Sweet Alert  -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    var error = "${error}";
    if(error && error.trim().length > 0){
        Swal.fire({
            icon: "error",
            title: "Oops!",
            text: error,
            timer: 2000,
            showConfirmButton: false
        });
    }
</script>

<!-- SCRIPT -->
<script>

// Handle time selection
const slots = document.querySelectorAll(".time-slot");
const selectedTimeInput = document.getElementById("selectedTime");

slots.forEach(slot => {
    slot.addEventListener("click", () => {
        slots.forEach(s => s.classList.remove("active"));
        slot.classList.add("active");

        // store selected time
        selectedTimeInput.value = slot.innerText;
    });
});

// Prevent submit if no time selected
document.querySelector("form").addEventListener("submit", function(e){
    if(!selectedTimeInput.value){
        e.preventDefault();
        alert("Please select a time slot!");
    }
});

</script>

</body>
</html>