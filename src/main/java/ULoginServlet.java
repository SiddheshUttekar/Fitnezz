

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
 * Servlet implementation class ULoginServlet
 */
@WebServlet("/ULoginServlet")
public class ULoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitnezz_proj", "root", "root14")) {
            UserDAO userDAO = new UserDAO(connection);
            if (userDAO.validateUser(username, password)) {
                // Successful login, you can redirect to a welcome page
                response.sendRedirect("index.html");
            } else {
                // Failed login, redirect back to the login page
                response.sendRedirect("user_login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}