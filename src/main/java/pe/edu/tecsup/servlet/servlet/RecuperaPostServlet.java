package pe.edu.tecsup.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RecuperaPostServlet")
public class RecuperaPostServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<body>");
        String nom = req.getParameter("nombre");
        String ape = req.getParameter("apellido");
        out.println("Bienvenido " + nom + " " + ape);
        out.println("</body>");
        out.println("</html>");
        out.close();

    }

}
