/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controleur;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mohammed
 */
public class DEcrypt extends HttpServlet {

    Rsa rsa = new Rsa(13);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher requestDispatcher;
        requestDispatcher = request.getRequestDispatcher("/Decrypt.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("rsa", rsa);
        String D = (String) request.getParameter("D");
        String N = (String) request.getParameter("N");
        String M = (String) request.getParameter("M");
        rsa.setD(new BigInteger(D));
        rsa.setE(new BigInteger(N));
//        request.setAttribute("m", rsa.decrypt(new BigInteger(M)).intValue());

        request.setAttribute("m", M);
        request.setAttribute("D", D);
        request.setAttribute("N", N);
        RequestDispatcher requestDispatcher;
        requestDispatcher = request.getRequestDispatcher("/Resultatecryp.jsp");
        requestDispatcher.forward(request, response);
    }

}
