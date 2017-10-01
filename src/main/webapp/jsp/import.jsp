<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %> 
<!DOCTYPE html>
<html>
    <%
        Date fecha = new Date();
        String total = fecha.getDate() + "/"
                + (fecha.getMonth() + 1) + "/"
                + (fecha.getYear() + 1900);

    %> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Fecha  </h1>
        <%=total%> 
    </body>
</html>
