<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <h3>IF</h3>
        <c:if test='${param.ok == "yes"}'>
            Hola <c:out value="${param.name}!"/>
        </c:if>

        <h3>CHOOSE</h3>
        <c:choose>
            <c:when test='${param.curso == "java"}'> Curso de Java
            </c:when>
            <c:when test='${param.curso == "php"}'> Curso de PHP
            </c:when> 
        </c:choose>

        <h3>FOREACH</h3> 
        <table>
            <tr>
                <th>Value</th>
                <th>Square</th>
            </tr>

            <c:forEach var="x" begin="0" end="10" step="2">
                <tr>
                    <td><c:out value="${x}"/></td>
                    <td><c:out value="${x * x}"/></td>
                </tr> 
            </c:forEach>
        </table>
</html>
</html>