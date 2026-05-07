<html>
<head>
    <title>Student Result Form</title>

    <script>
        function validateForm() {

            var rollno = document.forms["myForm"]["rollno"].value;
            var name = document.forms["myForm"]["studentname"].value;

            var s1 = document.forms["myForm"]["sub1"].value;
            var s2 = document.forms["myForm"]["sub2"].value;
            var s3 = document.forms["myForm"]["sub3"].value;
            var s4 = document.forms["myForm"]["sub4"].value;
            var s5 = document.forms["myForm"]["sub5"].value;

            if (rollno == "" || name == "" ||
                s1 == "" || s2 == "" || s3 == "" ||
                s4 == "" || s5 == "") {

                alert("All fields are required");
                return false;
            }

            // Marks validation
            if (s1 < 0 || s1 > 100 ||
                s2 < 0 || s2 > 100 ||
                s3 < 0 || s3 > 100 ||
                s4 < 0 || s4 > 100 ||
                s5 < 0 || s5 > 100) {

                alert("Marks should be between 0 and 100");
                return false;
            }

            return true;
        }
    </script>
</head>

<body>

<h2>Student Result Processing</h2>

<form name="myForm"
      action="ResultServlet"
      method="post"
      onsubmit="return validateForm()">

    Roll No:
    <input type="text" name="rollno">
    <br><br>

    Student Name:
    <input type="text" name="studentname">
    <br><br>

    Subject 1:
    <input type="text" name="sub1">
    <br><br>

    Subject 2:
    <input type="text" name="sub2">
    <br><br>

    Subject 3:
    <input type="text" name="sub3">
    <br><br>

    Subject 4:
    <input type="text" name="sub4">
    <br><br>

    Subject 5:
    <input type="text" name="sub5">
    <br><br>

    <input type="submit" value="Calculate Result">

</form>

</body>
</html>