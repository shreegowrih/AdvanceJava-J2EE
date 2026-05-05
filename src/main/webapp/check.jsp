<%@ page session="true" %>
<html>
<body>

<%
    String user = (String) session.getAttribute("user");

    if (user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Session is still active.</p>
<%
    } else {
%>
        <h2>Session Expired!</h2>
        <p>Please enter your details again.</p>
        <a href="index.jsp">Go Back</a>
<%
    }
%>

</body>
</html>