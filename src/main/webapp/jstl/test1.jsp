<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set scope="session" var="name" value="<b>David</b>"/>
        
        
        Bienvenido: 
        <c:out value="Hola ${sessionScope.name}"  
               default="Invitado" escapeXml="false" />
    </body>
</html>
