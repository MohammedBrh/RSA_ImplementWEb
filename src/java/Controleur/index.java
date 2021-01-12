/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controleur;

import java.io.IOException;
import java.math.BigInteger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mohammed
 */
public class index extends HttpServlet {
        Rsa rsa=new Rsa(13);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /* Création ou récupération de la session */

        
        
        request.setAttribute("rsa", rsa);
        /* Récupération de l'objet depuis la session */
        
        RequestDispatcher requestDispatcher;
        requestDispatcher = request.getRequestDispatcher("/index.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String M=(String) request.getParameter("Messae");
        
        System.out.println(M);
        
        request.setAttribute("rsa", rsa);
        request.setAttribute("m", M);
        
        RequestDispatcher requestDispatcher;
        requestDispatcher = request.getRequestDispatcher("/Resultat.jsp");
        requestDispatcher.forward(request, response);
    }

}
