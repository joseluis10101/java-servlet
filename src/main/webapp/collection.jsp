<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lenguajes  </h1>
        <%
            List<String> lenguajes = new ArrayList();
            lenguajes.add("java");
            lenguajes.add("c");
            lenguajes.add("ruby");
            lenguajes.add("python");

            for (String len : lenguajes) {
                out.println(len);
            }
        %> 
    </body>
</html>
