<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <body>

        <h3> Link Simple  </h3>
        <c:set var="minombre" value="${param.minombre}Rodriguez"/>
        <a href="<c:url value="mock.jsp?a=${minombre}"/>">hazme click</a>


        <h3> Link Detallado </h3>
        <a href="<c:url value="mock.jsp">
               <c:param name="n" value="a"/>
           </c:url>">ir a
        </a>
</html>
</html>