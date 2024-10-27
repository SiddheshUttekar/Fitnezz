

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Servlet implementation class URegistrationServlet
 */
@WebServlet("/URegistrationServlet")
public class URegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();
        user.setName(name);
        user.setAge(age);
        user.setMobile(mobile);
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitnezz_proj", "root", "root14")) {
            UserDAO userDAO = new UserDAO(connection);
            if (userDAO.registerUser(user)) {
                response.sendRedirect("registration_success.jsp");
            } else {
                response.sendRedirect("registration_error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}