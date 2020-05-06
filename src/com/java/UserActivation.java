/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java;


import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;




public class UserActivation extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String status=request.getParameter("value");
     String authorizeuser=request.getParameter("username");
   
        PrintWriter out = response.getWriter();
       
           try {
            Connection con=ConnectionProvider.getConnection();
            Statement st=con.createStatement();
            int i=st.executeUpdate("update register set status='"+status+"' where username='"+authorizeuser+"'");
            if(i>0){
                response.sendRedirect("AllAuthorizedUsers.jsp?value=Authorized&value1='"+authorizeuser+"'");
            }
            
            else{
                
                response.sendRedirect("AdminHome.jsp");
                
            }
        }catch(Exception e){
           e.printStackTrace();
        }
    }
}
    