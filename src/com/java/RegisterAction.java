
package com.java;


import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/reaction")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
        maxFileSize=1024*1024*10,
        maxRequestSize=1024*1024*50)
public class RegisterAction extends HttpServlet {
  
   Statement st;
    Connection con;
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      int count=0;
      String status="waiting";

        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String username=request.getParameter("uname");
        String password=request.getParameter("pass");
        
        String dob=request.getParameter("dob");
        String gender=request.getParameter("gender");
        String mobile=request.getParameter("mobile");
        String location=request.getParameter("location");
          Part part=request.getPart("image");
                    
                    
                    
                    
                     String filename=extractFileName(part);
                    String savepath="C:\\Users\\Acer\\Documents\\NetBeansProjects\\I injection Toward effective collaborative filtering using uninteresting items\\web\\Gallery" +File.separator+filename;  
                      part.write(savepath +File.separator);
                    
                      try{
                   
                     con=ConnectionProvider.getConnection();
                      st=con.createStatement();
                     ResultSet rs=st.executeQuery("select count(*) from register where username='"+username+"'");
                     if(rs.next()){
                         
                         count=rs.getInt(1);
                         
                         if(count==0){
                        int i=st.executeUpdate("insert into register values('"+firstname+"','"+lastname+"','"+email+"','"+username+"','"+password+"','"+dob+"','"+gender+"','"+mobile+"','"+location+"','"+filename+"','"+savepath+"','"+status+"')");
                         if(i==0){
                             response.sendRedirect("Register.jsp?msg=Register Failed");
                         }
                         else{
                             request.getSession().setAttribute("email",email);
                             request.getSession().setAttribute("username",username);
                            response.sendRedirect("Register.jsp?msg=Register Success");
                         }
                         }
                         else{
                         response.sendRedirect("Register.jsp?message=User Already Exist");
                     }
                     
                     }
                      
                      }catch(Exception e){
                          e.printStackTrace();
                      }
                      
        }
    private String extractFileName(Part part){
            String contentDisp=part.getHeader("content-disposition");
            String[] items=contentDisp.split(";");
            for(String s:items){
                if(s.trim().startsWith("filename")){
                    return s.substring(s.indexOf("=")+2, s.length() -1);
                }
            }
        return "";
        }
    
    }


  