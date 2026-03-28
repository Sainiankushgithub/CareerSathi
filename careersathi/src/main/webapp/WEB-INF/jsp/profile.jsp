<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.carrersathi.entities.Meeting"%>
<%@ page import="com.carrersathi.entities.User"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Meetings | CareerSaathi</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style3.css" />

<style>
body {
	background-color: #0f172a;
	color: white;
}

.card-custom {
	background-color: #1e293b;
	border: none;
	border-radius: 12px;
}

.empty-box {
	text-align: center;
	margin-top: 50px;
}
</style>

</head>

<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<%
	User user = (User) session.getAttribute("user");
	Boolean hasActive = (Boolean) request.getAttribute("hasActiveMeeting");

	// 🔥 FIX 1: safety check
	if (user == null) {
		response.sendRedirect(request.getContextPath() + "/login");
		return;
	}
	%>

	<div class="container mt-5 pt-5">

		<h2 class="text-warning text-center mb-4">My Meetings</h2>

		<!-- 🔥 FIX 2: ONLY CONSULTEE CAN BOOK -->
		<%
		if ("CONSULTEE".equalsIgnoreCase(user.getRole())) {
		%>

		<%
		if (hasActive == null || !hasActive) {
		%>
		<a href="${pageContext.request.contextPath}/bookconsultation"
			class="btn btn-warning mb-4"> Book Consultation </a>
		<%
		} else {
		%>
		<button class="btn btn-secondary mb-4" disabled>You already
			have a scheduled meeting</button>
		<%
		}
		%>

		<%
		}
		%>

		<%
		List<Meeting> meetings = (List<Meeting>) request.getAttribute("meetings");
		
		Meeting activeMeeting = null;

		if(meetings != null){
		    for(Meeting m : meetings){
		        if("SCHEDULED".equalsIgnoreCase(m.getStatus())){
		            activeMeeting = m;
		            break;
		        }
		    }
		}

		java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ofPattern("dd MMM yyyy, hh:mm a");

		if (meetings != null && !meetings.isEmpty()) {

			// 🔥 FIX 3: SORT (scheduled first, completed later)
			meetings.sort((a, b) -> {
				if ("SCHEDULED".equalsIgnoreCase(a.getStatus()) && "COMPLETED".equalsIgnoreCase(b.getStatus()))
			return -1;

				if ("COMPLETED".equalsIgnoreCase(a.getStatus()) && "SCHEDULED".equalsIgnoreCase(b.getStatus()))
			return 1;

				return b.getMeetingTime().compareTo(a.getMeetingTime());
			});

			for (Meeting m : meetings) {
		%>

		<div class="card card-custom mb-3 p-3 shadow">

			<h5 class="text-warning"><%= m.getSpecialization() %></h5>

			<p>
				📅 <strong>Meeting Time:</strong>
				<%= m.getMeetingTime().format(formatter) %>
			</p>

			<!-- 🔥 COUNTDOWN -->
			<p>
				⏳ <strong>Time Left:</strong> <span id="countdown-<%=m.getId()%>"
					style="color: lightgreen;"></span>
			</p>

			<!-- 🔥 STATUS -->
			<p>
				<strong>Status:</strong> <span id="status-<%=m.getId()%>"
					class="badge bg-secondary"></span>
			</p>

			<!-- JOIN BUTTON -->
			<% if("SCHEDULED".equalsIgnoreCase(m.getStatus())) { %>

			<!-- 🔥 FIX: BOTH CAN JOIN -->
			<a
				href="${pageContext.request.contextPath}/joinMeeting?roomId=<%= m.getMeetingLink() %>&meetingId=<%= m.getId() %>"
				class="btn btn-warning text-dark"> Join Meeting </a>

			<% } else { %>

			<button class="btn btn-secondary" disabled>Completed</button>

			<% } %>

		</div>

		<%
		}
		} else {
		%>

		<div class="empty-box">
			<h5>No meetings scheduled yet 😔</h5>

			<%
			if ("CONSULTEE".equalsIgnoreCase(user.getRole())) {
			%>
			<a href="${pageContext.request.contextPath}/bookconsultation"
				class="btn btn-warning mt-3"> Book Consultation </a>
			<%
			}
			%>
		</div>

		<%
		}
		%>
	</div>
	<!-- 💬 FLOAT BUTTON -->
<div id="chat-toggle" onclick="toggleChat()">
    💬 <span id="notif-count">0</span>
</div>

<!-- CHAT BOX -->
<div id="chat-box-container" class="chat-hidden">

    <div class="chat-header">
        Community Chat
        <span id="online-users">● 0 online</span>
        <span onclick="toggleChat()" style="cursor:pointer;">✖</span>
    </div>

    <div id="chat-box" class="chat-body"></div>

    <!-- typing -->
    <div id="typing-indicator" style="font-size:12px; color:#aaa; padding-left:10px;"></div>

    <div class="chat-input">
        <input type="text" id="msgInput" placeholder="Type message..."/>
        <button onclick="sendMessage()">➤</button>
    </div>

</div>

	<!-- SWEET ALERT -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
var success = "${success}";
var error = "${error}";

if(success && success.trim().length > 0){
    Swal.fire({
        icon: "success",
        title: "Success",
        text: success,
        timer: 2000,
        showConfirmButton: false
    });
}

if(error && error.trim().length > 0){
    Swal.fire({
        icon: "error",
        title: "Oops",
        text: error
    });
}
</script>
	<script>

<% for (Meeting m : meetings) { %>

(function(){

    const meetingTime = new Date("<%= m.getMeetingTime() %>");
    const meetingEnd = new Date(meetingTime.getTime() + (20 * 60 * 1000));

    const countdownEl = document.getElementById("countdown-<%=m.getId()%>");
    const statusEl = document.getElementById("status-<%=m.getId()%>");

    if (!countdownEl || !statusEl) return;

    function updateUI() {

        const now = new Date();
        const diff = meetingEnd - now;

        // STATUS
        if (now < meetingTime) {
            statusEl.innerHTML = "⏳ Starts Soon";
            statusEl.className = "badge bg-secondary";
        } 
        else if (now >= meetingTime && now <= meetingEnd) {
            statusEl.innerHTML = "🔴 LIVE NOW";
            statusEl.className = "badge bg-danger";
        } 
        else {
            statusEl.innerHTML = "Completed";
            statusEl.className = "badge bg-dark";
        }

        // COUNTDOWN
        if (diff <= 0) {
            countdownEl.innerHTML = "Meeting ended";
            countdownEl.style.color = "red";
            return;
        }

        const minutes = Math.floor(diff / 60000);
        const seconds = Math.floor((diff % 60000) / 1000);

        countdownEl.innerHTML = minutes + " min " + seconds + " sec";

        countdownEl.style.color = minutes <= 5 ? "red" : "lightgreen";
    }

    updateUI();
    setInterval(updateUI, 1000);

})();

<% } %>

</script>

<script>

const currentUserId = "<%= user.getId() %>";

// TOGGLE CHAT
function toggleChat(){
	const box = document.getElementById("chat-box-container");
	box.classList.toggle("chat-hidden");
}

// LOAD MESSAGES
function loadMessages(){

    fetch("getMessages") // ✅ GLOBAL CHAT
    .then(res => res.json())
    .then(data => {

        const box = document.getElementById("chat-box");
        box.innerHTML = "";

        data.forEach(msg => {

            const isMe = String(msg.senderId) === String(currentUserId);

            const div = document.createElement("div");
            div.className = isMe ? "my-msg" : "other-msg";

            const textValue = (msg.message && msg.message.trim() !== "")
                ? msg.message
                : "⚠️ empty";

            const inner = document.createElement("div");
            inner.className = "text";

            // 🔥 ADD sender name (WhatsApp style)
            inner.textContent = msg.senderName + ": " + textValue;

            div.appendChild(inner);
            box.appendChild(div);
        });

        box.scrollTop = box.scrollHeight;
    });
}

// SEND MESSAGE
function sendMessage(){

    const input = document.getElementById("msgInput");
    const msg = input.value;

    if(!msg || msg.trim() === ""){
        console.log("Empty message blocked");
        return;
    }

    fetch("sendMessage", {
        method: "POST",
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        body: "message=" + encodeURIComponent(msg)
    })
    .then(res => res.text())
    .then(() => {
        input.value = "";
        loadMessages();
    });
}
document.getElementById("msgInput").addEventListener("keypress", function(e){
    if(e.key === "Enter"){
        sendMessage();
    }
});

// AUTO REFRESH
setInterval(loadMessages, 2000);
loadMessages(); // ✅ LOAD IMMEDIATELY
</script>


</body>
</html>