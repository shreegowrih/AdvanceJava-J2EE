<html>
<body>

<h2>Student Result</h2>

<p>
<b>Roll No:</b>
<%= request.getAttribute("rollno") %>
</p>

<p>
<b>Student Name:</b>
<%= request.getAttribute("studentname") %>
</p>

<p>
<b>Subject 1:</b>
<%= request.getAttribute("sub1") %>
</p>

<p>
<b>Subject 2:</b>
<%= request.getAttribute("sub2") %>
</p>

<p>
<b>Subject 3:</b>
<%= request.getAttribute("sub3") %>
</p>

<p>
<b>Subject 4:</b>
<%= request.getAttribute("sub4") %>
</p>

<p>
<b>Subject 5:</b>
<%= request.getAttribute("sub5") %>
</p>

<p>
<b>Average:</b>
<%= request.getAttribute("average") %>
</p>

<p>
<b>Result:</b>
<%= request.getAttribute("result") %>
</p>

<br>

<a href="index.jsp">
Go Back To Client Page
</a>

</body>
</html>