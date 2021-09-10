<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List"%>
    <%@ page import="metier.entities.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EJB-Servlet</title>
</head>
<body>
<h1>Liste de comptes de ISIKA</h1>

<% List<Compte> lc = (List<Compte> )request.getAttribute("comptes"); %>

<table border="1" align="center">
<tr><td>ID</td><td>Solde</td><td>Date création</td></tr>
     <%
    for(Compte c:lc){%>
        <tr>
            <td><%= c.getCode()%></td>
            <td><%= c.getSolde() %></td>  
            <td><%= c.getDateCreation() %></td> 
        </tr>
      <%}%>
</table>
</body>
</html>