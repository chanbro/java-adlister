import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin", urlPatterns = "/")
public class admin extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


        String name = request.getParameter("name");
        if (name == null){
            name = "World";
        }
        response.getWriter().println("<h1>Hello, " + name + "!</h1>");
        response.getWriter().println("<h3>The count is " + counter + ".</h3>");
    }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


        String name = request.getParameter("name");
        if (name == null){
            name = "World";
        }
        response.getWriter().println("<h1>Hello, " + name + "!</h1>");
        response.getWriter().println("<h3>The count is " + counter + ".</h3>");
    }


}
