<%-- 
    Document   : newjspindex
    Created on : 12 janv. 2021, 22:21:06
    Author     : Mohammed
--%>

<%@page import="java.math.BigInteger"%>
<%@page import="Controleur.Rsa"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav {
                overflow: hidden;
                background-color: #333;
            }

            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            .topnav a.active {
                background-color: #4CAF50;
                color: white;
            }
            table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 300px;
                border: 1px solid #ddd;
                margin-left: auto;
                margin-right: auto;
            }

            th, td {
                text-align: left;
                padding: 16px;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }


            .button3{
 display:inline-block;
 padding:0.3em 1.2em;
 margin:0 0.3em 0.3em 0;
 border-radius:2em;
 box-sizing: border-box;
 text-decoration:none;
 font-family:'Roboto',sans-serif;
 font-weight:300;
 color:#FFFFFF;
 background-color:#4eb5f1;
 text-align:center;
 transition: all 0.2s;
            }
            .button3:hover{
 background-color:#4095c6;
            }
            @media all and (max-width:30em){
 .button3{
  display:block;
  margin:0.2em auto;

                }
            </style>
        </head>
        <body>

            <div class="topnav">
                <a  href="index">Cryptage</a>
                <a class="active" href="DEcrypt">Decryptage</a>
            </div>

            <br><br>
            <%Rsa d = (Rsa) request.getAttribute("rsa");%>
            <%String M = (String) request.getAttribute("m");%>

            <form method="post" >
                <label >d : </label>
                <input type="text" name="D" style="padding: 12px;
                       border: 1px solid #ccc;
                       border-radius: 4px;
                       resize: vertical;" />
                
                 <label >n : </label>
                <input type="text" name="N" style="padding: 12px;
                       border: 1px solid #ccc;
                       border-radius: 4px;
                       resize: vertical;" />
                
                 <label >Mot  Crypte : </label>
                <input type="text" name="M" style="padding: 12px;
                       border: 1px solid #ccc;
                       border-radius: 4px;
                       resize: vertical;" />
                
                <input type="submit" value="Crypter" class="button3">
            </form>
            
        </body>
</html>