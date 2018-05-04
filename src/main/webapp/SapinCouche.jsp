<%-- 
    Document   : SapinCouche
    Created on : 30 avr. 2018, 11:08:49
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
        <h1>Sapin couché</h1>
        <% 
            int ihauteur =0;
            if(session.getAttribute("HauteurSapin")!=null) 
            {
                ihauteur = (int) session.getAttribute("HauteurSapin");
            }
            int base = ihauteur;
            int nlignes;
            int netoiles = 0;
            String ChaineEtoile="&nbsp"+"&nbsp";
            
            for (nlignes = 1; nlignes < ihauteur; nlignes++) {
            ChaineEtoile = Exercice03.donneEtoilecouche(nlignes, base);
            out.print(ChaineEtoile+"<br/>");
        }
        for (nlignes = ihauteur; nlignes > 0; nlignes--) {
            ChaineEtoile = Exercice03.donneEtoilecouche(nlignes, base);
            out.print(ChaineEtoile+"<br/>");
        }
        %>
    </body>
</html>
