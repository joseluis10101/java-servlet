<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page import="pe.edu.tecsup.servlet.model.Pregunta,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            Pregunta p1 = new Pregunta(4, "¿qué es JSTL?");
            Pregunta p2 = new Pregunta(5, "¿qué es EL?");

            List<Pregunta> c = new ArrayList<Pregunta>();
            c.add(p1);
            c.add(p2);

            request.setAttribute("preguntas", c);
        %>
        
        
        <c:forEach items="${requestScope.preguntas}" 
                   var="p" varStatus="i" >
            <h4>${i.count}.- ${p.texto} (${p.id}) </h4>
        </c:forEach>
            
    </body>
</html>
