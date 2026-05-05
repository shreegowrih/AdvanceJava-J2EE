<%@ page import="java.util.*" session="true" %>
<html>
<body>

<%
    // Set session timeout to 60 seconds
    session.setMaxInactiveInterval(60);

    String name = request.getParameter("username");

    // Store name in session (only first time)
    if (name != null) {
        session.setAttribute("user", name);
    }

    String user = (String) session.getAttribute("user");

    if (user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Session is active.</p>
        <p><i>Session will expire in 1 minute of inactivity.</i></p>
<%
    } else {
%>
        <h2>Session Expired!</h2>
        <p>Please enter your name again.</p>
        <a href="index.jsp">Go Back</a>
<%
    }
%>

</body>
</html>