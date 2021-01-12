/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Traitement_Rsa;

/**
 *
 * @author Mohammed
 */
import Controleur.Rsa;
import java.math.BigInteger;
import java.security.SecureRandom;

public class RSA_Implem {

    public static void main(String[] args) {
        Rsa r = new Rsa(14);
        BigInteger m = new BigInteger("15");
        BigInteger Cm = r.encrypt(m);
        System.out.println(r.getD());
        System.out.println(r.getN());
        System.out.println(r.getE());
        System.out.println("Mot  :" + m);
        System.out.println("Chefrement  :" + Cm);
        System.out.println("DeChefrement  :" + r.decrypt(Cm));
        if (m.intValue() == r.decrypt(Cm).intValue()) {
            System.out.println("CA MArce !!");
        }
    }

}
