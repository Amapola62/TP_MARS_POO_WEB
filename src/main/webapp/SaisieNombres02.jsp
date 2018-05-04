<%-- 
    Document   : SaisieNombres02
    Created on : 5 avr. 2018, 11:48:07
    Author     : Formation
--%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulaire dynamique de saisie(s)</title>
    </head>
    <body>
        <% 
            int iNbValeurs = 0;
            if(session.getAttribute("NbValeurs")!=null)
            {
                iNbValeurs = (int) session.getAttribute("NbValeurs");
            }
        %>
        <form action="Traitement02" method="post">
            <%
                for(int i=0; i<iNbValeurs; i++)
                {
            %>
            <label>Saisie du nombre <%=i+1%> :</label>
            <input type="text" name="Valtemp<%=i%>" required=""/>
            <%}%>
            <input type="submit" value="Valider" />
        </form>
    </body>
</html>
