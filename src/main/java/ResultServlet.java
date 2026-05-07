import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String rollno = request.getParameter("rollno");
        String name = request.getParameter("studentname");

        int sub1 = Integer.parseInt(request.getParameter("sub1"));
        int sub2 = Integer.parseInt(request.getParameter("sub2"));
        int sub3 = Integer.parseInt(request.getParameter("sub3"));
        int sub4 = Integer.parseInt(request.getParameter("sub4"));
        int sub5 = Integer.parseInt(request.getParameter("sub5"));

        // Server-side validation
        if (rollno.equals("") || name.equals("")) {
            response.getWriter().println("All fields are required");
            return;
        }

        // Calculate total and average
        int total = sub1 + sub2 + sub3 + sub4 + sub5;
        double average = total / 5.0;

        // Result processing
        String result;

        if (sub1 >= 40 && sub2 >= 40 &&
            sub3 >= 40 && sub4 >= 40 &&
            sub5 >= 40) {

            result = "PASS";
        } else {
            result = "FAIL";
        }

        // Store values
        request.setAttribute("rollno", rollno);
        request.setAttribute("studentname", name);

        request.setAttribute("sub1", sub1);
        request.setAttribute("sub2", sub2);
        request.setAttribute("sub3", sub3);
        request.setAttribute("sub4", sub4);
        request.setAttribute("sub5", sub5);

        request.setAttribute("average", average);
        request.setAttribute("result", result);

        // Forward to result.jsp
        RequestDispatcher rd =
                request.getRequestDispatcher("result.jsp");

        rd.forward(request, response);
    }
}