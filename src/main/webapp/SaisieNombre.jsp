<%-- 
    Document   : SaisieNombre
    Created on : 5 avr. 2018, 10:07:15
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nombre de saisies de chiffres</title>
    </head>
    <body>
        <h1>Combien de nombres voulez-vous saisir ?</h1>
        <form action="Traitement01" method="post">
            <label>Nombre de valeurs :</label>
            <input type="text" name="NbValeurs" required/><br/>
            <input type="submit" value="Valider"/>
        </form>
    </body>
</html>
