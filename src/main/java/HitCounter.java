import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "HitCounter", urlPatterns = "/count")
public class HitCounter extends HttpServlet {
    private int hitCount;

    public void initial() {
        hitCount = 0;
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        hitCount++;

        PrintWriter out = res.getWriter();

        String totalHits = "Total number of Hits:";
        out.println("<h1>" + totalHits +  hitCount + "</h1>");




    }

}
