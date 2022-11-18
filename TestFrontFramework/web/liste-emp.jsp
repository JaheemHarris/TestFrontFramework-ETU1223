<%-- 
    Document   : liste-emp.jsp
    Created on : 18 nov. 2022, 20:57:57
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="model.Emp"%>
<% List<Emp> emps = (List<Emp>)request.getAttribute("emps"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste des employés</h1>
        
        <table style="border: 2px solid black; min-width: 50% ">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                </tr>
            </thead>
            <tbody>
                <% for(Emp emp : emps) { %>
                    <tr>
                        <td><%=emp.getId() %></td>
                        <td><%=emp.getNom()%></td>
                        <td><%=emp.getPrenom()%></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
            
            <h3><a href="create-emp.do">Ajouter un nouvel employé</a></h3>
    </body>
</html>
