<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="CalculadoraServlet" method="post"> 
            Operador1:
            <input  type="number" name="operador1" />
            <br/>
            Operador2:
            <input  type="number" name="operador2" />
            <br/>
            TipoOperación:
            <select name="operacion">
                <option value="sum"> Suma<option> 
                <option value="res"> Resta<option> 
                <option value="mul"> Multiplicación<option> 
                <option value="div"> División<option> 
            </select>            
            <br>
            <input type="submit"  value="Calcular"/>
        </form>
    </body>
</html>
