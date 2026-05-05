<%@ page import="java.util.*" session="true" %>
<html>
<body>

<%
    String name = request.getParameter("username");
    String timeStr = request.getParameter("time");

    int minutes = Integer.parseInt(timeStr);
    int seconds = minutes * 60;

    // Set session expiry
    session.setMaxInactiveInterval(seconds);

    // Store name
    session.setAttribute("user", name);
%>

<h2>Hello <%= name %>!</h2>
<p>Session is set for <%= minutes %> minute(s).</p>

<p>
Click below link to check session before expiry:
</p>

<a href="check.jsp">Check Session</a>

<br><br>
<p>Or wait for <%= minutes %> minute(s) and click the link to see session expiry.</p>

</body>
</html>