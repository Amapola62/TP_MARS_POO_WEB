<%-- 
    Document   : AfficherRandom
    Created on : 30 avr. 2018, 14:39:53
    Author     : Formation
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Donnez un chiffre entre 1 et 100</p>
        <form action="TraitementDonnees" method="POST">
            <label>Saisie du chiffre</label>
            <input type="text" name="NbSaisi" />
            <input type="submit" value="Jouer"/>

            <%
                int Valtemp = 0;
                int Valrandom = 0;
                int Valsaisie = 0;
                boolean Gagne = false;
                List<Integer> LRandom = new ArrayList<Integer>();
                List<Integer> LScore = new ArrayList<Integer>();
                List<Integer> LCoups = new ArrayList<Integer>();

                if (session.getAttribute("Valrandom") != null && session.getAttribute("NbSaisie") != null && session.getAttribute("gagné") != null) {
                    Valrandom = (int) session.getAttribute("Valrandom");
                    Valsaisie = (int) session.getAttribute("NbSaisie");
                    Gagne = (boolean) session.getAttribute("gagné");

                    if (Gagne == false) {
                        if (Valsaisie > Valrandom) {
                            out.println("Trop grand !");
                        } else {
                            out.println("Trop petit !");
                        }
                    } else {
                        if (session.getAttribute("Listescores") != null && session.getAttribute("Listrandom") != null) {
                            LScore = (List<Integer>) session.getAttribute("Listescores");
                            LRandom = (List<Integer>) session.getAttribute("Listrandom");

                        }
                        out.println("Vous avez gagné !" + "<br/>");
                        out.println("Le nombre était bien " + Valrandom + "<br/>");

                        Valtemp = 0;
                        for (Integer vt : LRandom) {
                            if (vt > Valtemp) {
                                Valtemp = vt;
                            }

                        }
                        out.println("La plus grande valeur que vous ayez trouvé est : " + Valtemp);
                        if (LScore.size() > 0) {
                            Valtemp = LScore.get(0);

                            for (Integer vt : LScore) {
                                if (Valtemp > vt) {
                                    Valtemp = vt;
                                }
                            }
                        } else {
                            if (session.getAttribute("Listecoups") != null) {
                                LCoups = (List<Integer>) session.getAttribute("Listecoups");
                            }
                            Valtemp = LCoups.size();

                        }
                        out.println("Votre meilleur score est : " + Valtemp + " coups. ");

                        out.println("<input type='submit' name='boutongagner' value='Nouvelle partie'/>");
                    }
                }
            %>
        </form>
    </body>
</html>
