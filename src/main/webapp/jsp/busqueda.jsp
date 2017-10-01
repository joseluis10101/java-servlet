<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*, pe.edu.tecsup.servlet.model.Cliente"%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar</title>
    </head>
    <body>
        <h1>Clientes</h1>

        <form method="post" action="ClientesBuscarServlet"> 
            Buscar: <input type="text" name="nombres"/> 
            <input type="submit" value="Buscar"/> 
        </form>   
        <%
            List<Cliente> clientes = (List<Cliente>) request.getAttribute("CLIENTES_REGISTRADOS");

            if (clientes != null) {
                out.println("<ul>");
                for (Cliente x : clientes) {
                    out.println("<li>" + x.getNombreCompleto() + "</li>");
                }
                out.println("</ul>");
            }
        %> 

    </body>
</html>
