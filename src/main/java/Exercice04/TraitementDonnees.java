/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exercice04;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Formation
 */
public class TraitementDonnees extends HttpServlet {

    private static List<Integer> LCoups = new ArrayList<Integer>();
    private static List<Integer> LRandom = new ArrayList<Integer>();
     private static List<Integer> LScore = new ArrayList<Integer>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int Valsaisie = 0;
            int Valrandom =0;
            
 
            HttpSession sess = request.getSession(true);
            
             if(sess.getAttribute("Listecoups")!=null)
            {
                LCoups = (List<Integer>) sess.getAttribute("Listecoups");
    
            }
             
              if(sess.getAttribute("Listescores")!=null)
            {
                LScore = (List<Integer>) sess.getAttribute("Listescores");
            }
              else
              {
                   sess.setAttribute("Listescores",LScore);
              }
            
            if(request.getParameter("boutongagner") !=null)
            {
                Random random = new Random();
                Valrandom= random.nextInt(100);
                
                            
                
                if(sess.getAttribute("Listrandom") != null)
                {
                    LRandom = (List<Integer>) sess.getAttribute("Listrandom");
                }  
              
                LRandom.add(Valrandom);
               LScore.add(LCoups.size());
                sess.setAttribute("Valrandom", Valrandom);
                sess.setAttribute("Listrandom", LRandom);
                sess.setAttribute("Listecoups", new ArrayList<Integer>());
                 sess.setAttribute("NbSaisie", null);
                 sess.setAttribute("gagné", false);
                 sess.setAttribute("Listescores",LScore);
                RequestDispatcher rd = request.getRequestDispatcher("SaisieChiffre.jsp");
                rd.forward(request, response);
            }
            
            if(request.getParameter("NbSaisi")!=null && !request.getParameter("NbSaisi").equals("")) 
            {
                Valsaisie = Integer.parseInt(request.getParameter("NbSaisi"));
               
            }
            sess.setAttribute("NbSaisie", Valsaisie);
   
            if(sess.getAttribute("Valrandom")!=null) 
            {
                Valrandom = (int) sess.getAttribute("Valrandom");

            }

            if (Valsaisie != Valrandom) 
                    {
                        LCoups.add(Valsaisie);
                        sess.setAttribute("Listecoups", LCoups);
                        sess.setAttribute("gagné", false);
                        RequestDispatcher rd = request.getRequestDispatcher("SaisieChiffre.jsp");
                        rd.forward(request, response);
                    }
            else
            {
                        LCoups.add(Valsaisie);
                        sess.setAttribute("Listecoups", LCoups);
                        sess.setAttribute("gagné", true);
                        RequestDispatcher rd = request.getRequestDispatcher("SaisieChiffre.jsp");
                        rd.forward(request, response);
            }
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
