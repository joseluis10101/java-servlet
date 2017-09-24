package pe.edu.tecsup.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculadoraServlet")
public class CalculadoraServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer operador1 = Integer.parseInt(req.getParameter("operador1"));
        Integer operador2 = Integer.parseInt(req.getParameter("operador2"));
        String operacion = req.getParameter("operacion");

        Integer resultado;
        switch (operacion) {
            case "sum":
                resultado = operador1 + operador2;
                break;
            case "res":
                resultado = operador1 - operador2;
                break;
            case "mul":
                resultado = operador1 * operador2;
                break;
            case "div":
                resultado = operador1 / operador2;
                break;
            default:
                resultado = 0;
                break;
        }

        PrintWriter writer = resp.getWriter();
        writer.println("<html><body>");
        writer.println("<h1> Resultado: " + resultado + "</h1>");

    }

}
