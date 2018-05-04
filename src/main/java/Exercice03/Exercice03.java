/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exercice03;

import java.util.Scanner;

/**
 *
 * @author Formation
 */
public class Exercice03 {

    /**
     * @param args the command line arguments
     */
    private static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        int hauteur;
        int nlignes;
        int base;
        int netoiles;
        int nespacesmilieu;
        String ChaineEtoile;
        System.out.println("Quelle hauteur de sapin voulez-vous ?");
        hauteur = sc.nextInt();
        base = (hauteur * 2) - 1;
        for (nlignes = 1; nlignes <= hauteur; nlignes++) {
            ChaineEtoile = donneEtoile(nlignes, base);
            System.out.println(ChaineEtoile);
        }

        for (nlignes = 1; nlignes < hauteur; nlignes++) {
            ChaineEtoile = donneEtoilecouche(nlignes, base);
            System.out.println(ChaineEtoile);
        }
        for (nlignes = hauteur; nlignes > 0; nlignes--) {
            ChaineEtoile = donneEtoilecouche(nlignes, base);
            System.out.println(ChaineEtoile);
        }
        for (nlignes = 1; nlignes <= hauteur; nlignes++) {
            ChaineEtoile = donneEtoilevide(nlignes, base);
            System.out.println(ChaineEtoile);
        }
    }

    public static String donneEtoile(int phauteur, int pbase) {
        int netoiles = 0;
        int base = (phauteur * 2) - 1;
        String etoile = "&nbsp"+"&nbsp";

        for (netoiles = 1; netoiles <= ((pbase - base) / 2); netoiles++) {
            etoile += "&nbsp"+"&nbsp";
        }

        for (netoiles = 1; netoiles <= base; netoiles++) {
            etoile += "*";
        }

        for (netoiles = 1; netoiles <= ((pbase - base) / 2); netoiles++) {
            etoile += "&nbsp"+"&nbsp";
        }
        return etoile;
    }

    public static String donneEtoilecouche(int phauteur, int pbase) {
        int netoiles = 0;
        int base = phauteur;
        String etoile = "&nbsp"+"&nbsp";

        for (netoiles = 1; netoiles <= base; netoiles++) {
            etoile += "*";
        }
        return etoile;
    }

    public static String donneEtoilevide(int phauteur, int pbase) {
        int netoiles = 0;
        int base = (phauteur * 2) - 1;
        int nlignes = 0;
        int nespacesmilieu = base;
        int hauteur = 0;
        int be = ((phauteur-1)*2)-1;
        String etoile = "&nbsp"+"&nbsp";

        for (netoiles = 1; netoiles <= ((pbase - base) / 2); netoiles++) {
            etoile += "&nbsp"+"&nbsp";
        }
        
        if ((phauteur > 1)&&(base != pbase)) { //tous les niveaus sauf le premier et le dernier
            etoile += "*";
            for (nespacesmilieu = 1; nespacesmilieu <=be; nespacesmilieu++) {
                etoile +="&nbsp"+"&nbsp";
            }
            etoile += "*";
        }
        else
        if (base == pbase) { //le dernier niveau
            for (netoiles = 1; netoiles <= pbase; netoiles++) {
                etoile += "*";
            }
        }
        else
             etoile += "*"; //le premier niveau
        for (netoiles = 1; netoiles <= ((pbase - base) / 2); netoiles++) {
            etoile += "&nbsp"+"&nbsp";
        }
        return etoile;
    }
}
