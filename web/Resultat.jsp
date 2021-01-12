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
                <a class="active" href="index">Cryptage</a>
                <a href="DEcrypt">Decryptage</a>
            </div>

            <br><br>
            <%Rsa d = (Rsa) request.getAttribute("rsa");%>
            <%String M = (String) request.getAttribute("m");%>

            <form method="post" >
                <input type="text" name="Messae" style="padding: 12px;
                       border: 1px solid #ccc;
                       border-radius: 4px;
                       resize: vertical;" />
                <input type="submit" value="Crypter" class="button3">
            </form>
            <table>
                <tr>
                    <th>Attribute</th>
                    <th>Valeur </th>
                </tr>
                <tr>
                    <td>d</td>
                    <td><%=d.getD()%> </td>
                </tr>
                <tr>
                    <td>e</td>
                    <td><%=d.getE()%> </td>
                </tr>
                <tr>
                    <td>n</td>
                    <td><%=d.getN()%> </td>
                </tr>
                <tr>
                    <td>Cryptage de <%= M%></td>
                    <td><%=d.encrypt(new BigInteger(M))%> </td>
                </tr>
            </table>




        </body>
    </html>
