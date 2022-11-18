<%-- 
    Document   : ajouter-emp.jsp
    Created on : 18 nov. 2022, 20:57:45
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ajouter un nouvel employé</h1>
        <form action="add-emp.do" method="POSt">
            <label for="nom">Nom: </label>
            <input type="text" name="emp.nom"  id="nom"/>
            <label for="prenom">Prénom </label>
            <input type="text" name="emp.prenom"  id="prenom"/>
            <button type="submit">Ajouter</button>
        </form>
        
        <h3><a href="lesEmps.do">Voir la liste des employés</a></h3>
    </body>
</html>
