<%-- 
    Document   : Exercice03
    Created on : 6 avr. 2018, 11:23:06
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulaire sapin</title>
    </head>
    <body>
        <h1>Quel type de sapin voulez-vous ?</h1>
        <form action ="ChoixSapin" name="FormulaireSapin">
            <label>Type</label>
            <select name="Type">
                <option value="1" selected>1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
            <label>Hauteur</label>
            <input type="text" name="HauteurSapin"/>
            <input type="submit" value="ok"/>
        </form>
    </body>
</html>
