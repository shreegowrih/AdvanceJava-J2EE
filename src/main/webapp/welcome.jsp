<%@ page session="true" %>
<html>
<body>

<%
    String name = request.getParameter("username");

    // Set session expiry time to 60 seconds
    session.setMaxInactiveInterval(60);

    // Store name in session
    if (name != null) {
        session.setAttribute("user", name);
    }

    String user = (String) session.getAttribute("user");

    if (user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Session will expire in 1 minute of inactivity.</p>
<%
    } else {
%>
        <h2>Session Expired!</h2>
        <p>Please enter your name again.</p>
<%
    }
%>

</body>
</html>