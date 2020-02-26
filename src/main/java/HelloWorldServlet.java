import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/")
public class HelloWorldServlet extends HttpServlet {
    private int counter = 0;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        if (name == null){
            name = "World";
        }
        response.getWriter().println("<h1>Hello, " + name + "!</h1>");
        counter ++;
        response.getWriter().println("<h3>The count is " + counter + ".</h3>");
    }
}
