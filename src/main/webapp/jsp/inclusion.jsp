<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Inclusión en compilación</h3> 
        <%@include file="tabla.jsp" %>   
        
        
        <h3>Inclusión en ejecución</h3>
        <jsp:include page="tabla.jsp"/> 
    </body>
</html>
