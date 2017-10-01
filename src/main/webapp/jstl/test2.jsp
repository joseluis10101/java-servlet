<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
    String nombre = "david desde variable de clase";
%>

<c:set var="nom" value="<%=nombre%>"/> 



<%
    session.setAttribute("nombre", "david");
    pageContext.setAttribute("nombre", "juan");
    request.setAttribute("nombre", "jose");
    application.setAttribute("nombre", "toti");
%>
<html> 
    <body>
        <h3> Variables Local </h3>
        <c:out value="${pageScope.nom}"/>


        <h3> Variables en Scopes </h3>
        <c:out value="${sessionScope.nombre}" /> <br/>
        <c:out value="${pageScope.nombre}" /> <br/>
        <c:out value="${requestScope.nombre}" /> <br/>
        <c:out value="${applicationScope.nombre}" /> <br/>

         <h3> Scopes </h3>
        
        1 <c:out value="${pageContext}" /><br/>
        2 <c:out value="${pageContext.request.method}"/> <br/>
        3 <c:out value="${pageContext.request.queryString}"/><br/>
        4 <c:out value="${pageContext.servletContext.serverInfo}"/> 
    </body>
</html>