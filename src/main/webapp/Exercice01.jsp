<%-- 
    Document   : Exercice01
    Created on : 3 avr. 2018, 15:55:40
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercice 01</title>
    </head>
    <body>
        <h1>Les kilomètres à pied</h1>
        <%  for (int i=1; i<=15; i++) {
              out.print(i+" kilomètre");
              if(i>1) out.print("s");
              out.println(" à pied, ça use, ça use,<br/>");
              out.print(i+" kilomètre");
              if(i>1) out.print("s");
              out.println(" à pied, ça use les souliers.<br/>");
        }%>
    </body>
</html>
