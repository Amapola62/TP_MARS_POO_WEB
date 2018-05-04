<%-- 
    Document   : SapinPlein
    Created on : 6 avr. 2018, 16:05:12
    Author     : Formation
--%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Exercice03.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sapin plein</h1>
        <% 
            int ihauteur =0;
            if(session.getAttribute("HauteurSapin")!=null) 
            {
                ihauteur = (int) session.getAttribute("HauteurSapin");
            }
            int base = (ihauteur * 2) -1;
            int nlignes;
            int netoiles = 0;
            int pbase;
            String ChaineEtoile="";
            
            for (nlignes = 1; nlignes <= ihauteur; nlignes++) {
            ChaineEtoile = Exercice03.donneEtoile(nlignes, base);
            out.print(ChaineEtoile+"<br/>");
        }
        %>
    </body>
</html>
