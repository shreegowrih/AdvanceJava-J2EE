import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/UserDataServlet")
public class UserDataServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");

        // Server-side validation
        if (username == null || username.equals("") ||
            email == null || email.equals("") ||
            designation == null || designation.equals("")) {

            response.getWriter().println("All fields are required!");
            return;
        }

        // Email validation
        if (!email.contains("@")) {
            response.getWriter().println("Invalid Email!");
            return;
        }

        // Store data in request object
        request.setAttribute("username", username);
        request.setAttribute("email", email);
        request.setAttribute("designation", designation);

        // Forward to JSP page
        RequestDispatcher rd =
                request.getRequestDispatcher("result.jsp");

        rd.forward(request, response);
    }
}