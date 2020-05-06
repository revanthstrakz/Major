
package com.java;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;



public class DeleteUser extends HttpServlet {

   
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username=request.getParameter("value");
        String firstname=request.getParameter("value1");
        String lastname=request.getParameter("value2");
        String email=request.getParameter("value3");
        String gender=request.getParameter("value4");
        String mobile=request.getParameter("value5");
        String location=request.getParameter("value6");
        String filename=request.getParameter("value7");
        String savepath=request.getParameter("value8");
            String dob=request.getParameter("value9");
        String status="Deleted";
        int count=0;
        try{
            Connection con=ConnectionProvider.getConnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select count(*) from deleted where username='"+username+"'");
            while(rs.next()){
             count=rs.getInt(1);
            if(count==0){
                int i=st.executeUpdate("insert into deleted values('"+firstname+"','"+lastname+"','"+email+"','"+username+"','"+dob+"','"+gender+"','"+mobile+"','"+location+"','"+filename+"','"+savepath+"','"+status+"')"); 
            }
            else{
             response.sendRedirect("UserLogin.jsp?value=Sorry User Your Are UnAuthorized by Admin");   
            }
            Statement st1=con.createStatement();
            int i=st1.executeUpdate("delete from register where username='"+username+"'");
            if(i>0){
               response.sendRedirect("ViewAllUsers_Autherise.jsp?value=Deleted&value1='"+username+"'"); 
            }else{
                response.sendRedirect("ViewAllUsers_Autherise.jsp?value=Not Deleted");
            
            }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
}