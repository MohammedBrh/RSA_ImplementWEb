/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controleur;

import java.math.BigInteger;
import java.security.SecureRandom;

/**
 *
 * @author Mohammed
 */

public class Rsa {

    private BigInteger n, d, e;

    public BigInteger getN() {
        return n;
    }

    public void setN(BigInteger n) {
        this.n = n;
    }

    public BigInteger getD() {
        return d;
    }

    public void setD(BigInteger d) {
        this.d = d;
    }

    public BigInteger getE() {
        return e;
    }

    public void setE(BigInteger e) {
        this.e = e;
    }

    public static BigInteger GenereN(BigInteger q, BigInteger p) {
        return p.multiply(q);
    }

    public static BigInteger GenerePhi(BigInteger q, BigInteger p) {
        return (p.subtract(BigInteger.ONE)).multiply(q.subtract(BigInteger.ONE));
    }

   

    public static BigInteger GenereE(BigInteger q, BigInteger p) {
        BigInteger e = new BigInteger("3");
        BigInteger phi = GenerePhi(q, p);
        while (phi.gcd(e).intValue() > 1) {
            e = e.add(new BigInteger("2"));
        }
        return p.multiply(q);
    }

    public Rsa(int bitlen) {
        SecureRandom r = new SecureRandom();
        BigInteger p = new BigInteger(bitlen / 2, 100, r);
        BigInteger q = new BigInteger(bitlen / 2, 100, r);
        n = GenereN(q, p);

        e = GenereE(q, p);

        BigInteger phi = GenerePhi(q, p);

        d = e.modInverse(phi);
    }

    public BigInteger encrypt(BigInteger message) {
        return message.modPow(e, n);
    }

    public BigInteger decrypt(BigInteger message) {
        return message.modPow(d, n);
    }
}
