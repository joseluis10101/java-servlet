package pe.edu.tecsup.servlet.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.tecsup.servlet.model.Cliente;

@WebServlet("/ClientesBuscarServlet")
public class ClientesBuscarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Cliente> clientes = new ArrayList<Cliente>();
        clientes.add(new Cliente(1, "José", "Euse", "Alderete"));
        clientes.add(new Cliente(2, "Luis", "Carlos", "Matos"));
        clientes.add(new Cliente(3, "Miguel", "Ple", "Flex"));
        clientes.add(new Cliente(4, "Jean", "Euse", "Alderete"));
        clientes.add(new Cliente(5, "Carmen", "Cam", "Cam"));
        clientes.add(new Cliente(6, "Liz", "Ald", "Call"));

        String busqueda = req.getParameter("nombres");
        // Busqueda Old Style
        List<Cliente> clientesBuscados = new ArrayList();
        for (Cliente cliente : clientes) {
            if (cliente.getNombreCompleto().contains(busqueda)) {
                clientesBuscados.add(cliente);
            }
        }
        // Busqueda Java8
//        List<Cliente> clientesBuscados2 = 
//                clientes.stream()
//                .filter((cliente)
//                        -> (cliente.getNombreCompleto().contains(busqueda))
//                )
//                .collect(Collectors.toList());

        req.setAttribute("CLIENTES_REGISTRADOS", clientesBuscados);
        RequestDispatcher disp = req.getRequestDispatcher("/jsp/busqueda.jsp");
        disp.forward(req, resp);

    }

}
