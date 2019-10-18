import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello-world")
public class HelloWorldServlet extends HttpServlet {
    int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        String reset = req.getParameter("reset");

        res.setContentType("text/html");
        counter++;
        PrintWriter out = res.getWriter();

        if (name == null) {
            out.println("<h1>Hello, World!</h1>");
        } else {
            out.println("<h1>Hello, " + name + "!</h1>");
        }
        if (reset == null) {

        } else if (reset.equals("true")) {
            counter = 1;
        }
        out.println("You have visited this page " + counter + " times!");
    }
}
