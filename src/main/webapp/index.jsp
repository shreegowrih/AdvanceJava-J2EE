<html>
<head>
    <title>User Form</title>

    <script>
        function validateForm() {

            var username = document.forms["myForm"]["username"].value;
            var email = document.forms["myForm"]["email"].value;
            var designation = document.forms["myForm"]["designation"].value;

            // Username validation
            if (username == "") {
                alert("Username cannot be empty");
                return false;
            }

            // Email validation
            var emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

            if (!email.match(emailPattern)) {
                alert("Enter valid email");
                return false;
            }

            // Designation validation
            if (designation == "") {
                alert("Designation cannot be empty");
                return false;
            }

            return true;
        }
    </script>
</head>

<body>

<h2>User Information Form</h2>

<form name="myForm"
      action="UserDataServlet"
      method="post"
      onsubmit="return validateForm()">

    Username:
    <input type="text" name="username">
    <br><br>

    Email:
    <input type="text" name="email">
    <br><br>

    Designation:
    <input type="text" name="designation">
    <br><br>

    <input type="submit" value="Submit">

</form>

</body>
</html>