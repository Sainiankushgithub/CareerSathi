<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video Consultation | CareerSaathi</title>

<!-- ✅ LOAD ONLY ONE SCRIPT -->
<script src="https://unpkg.com/zego-uikit-prebuilt@2.17.0/zego-uikit-prebuilt.js"></script>

<style>
body {
    margin: 0;
    background-color: #0f172a;
}
#zego-container {
    width: 100%;
    height: 100vh;
}
</style>

</head>

<body>

<div id="zego-container"></div>

<script src="https://unpkg.com/@zegocloud/zego-uikit-prebuilt/zego-uikit-prebuilt.js"></script>

<script>
window.onload = function () {

    if (typeof ZegoUIKitPrebuilt === "undefined") {
        alert("Zego not loaded!");
        return;
    }

    const roomID = "<%= request.getAttribute("roomId") %>";
    const userID = "<%= request.getAttribute("userId") %>";
    const userName = "<%= request.getAttribute("userName") %>";

    const appID = 1592206476;
    const serverSecret = "9c10480594beaddd9f42087c362247ef";

    const token = ZegoUIKitPrebuilt.generateKitTokenForTest(
        appID,
        serverSecret,
        roomID,
        userID.toString(),
        userName
    );

    const zp = ZegoUIKitPrebuilt.create(token);

    zp.joinRoom({
        container: document.querySelector("#zego-container"),

        scenario: {
            mode: ZegoUIKitPrebuilt.VideoConference,
        },

        showPreJoinView: true,
        turnOnCameraWhenJoining: true,
        turnOnMicrophoneWhenJoining: true,
        showScreenSharingButton: true,

        // 🔥 FIX: redirect after leaving
        onLeaveRoom: () => {
            window.location.href = "<%= request.getContextPath() %>/profile";
        }
    });

};
</script>

</body>
</html>