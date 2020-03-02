import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getMethod().equalsIgnoreCase("GET")) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
//            response.sendRedirect("login.jsp");
        }
    }

        @Override
        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if (username != null && username.equals("admin") && password != null && password.equals("password")) {
                    response.sendRedirect("profile.jsp");
                } else {
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
        }
    }

