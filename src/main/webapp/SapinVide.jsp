<%-- 
    Document   : SapinVide
    Created on : 30 avr. 2018, 09:50:10
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
        <h1>Sapin vide</h1>
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
            String ChaineEtoile="&nbsp"+"&nbsp";
            int nespacesmilieu = base;
            int be = ((ihauteur-1)*2)-1;
            
            for (nlignes = 1; nlignes <= ihauteur; nlignes++) {
            ChaineEtoile = Exercice03.donneEtoilevide(nlignes, base);
            out.print(ChaineEtoile+"<br/>");
        }
        %>
    </body>
</html>