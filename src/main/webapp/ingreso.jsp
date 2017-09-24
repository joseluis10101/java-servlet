<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso</title>
    </head>
    <body>
        <form action="RecuperaPostServlet" method="post">
            Nombre : <input name="nombre" type="text"/> 
            Apellidos:<input name="apellido" type="text"/>
            <input type="submit" name="aceptar" value="Aceptar"/>
        </form>
    </body>
</html>
