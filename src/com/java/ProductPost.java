
package com.java;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/ProductPost")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
        maxFileSize=1024*1024*10,
        maxRequestSize=1024*1024*50)


public class ProductPost extends HttpServlet {
    
     public static Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }
     protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String rank="0";
         String rating="0";
     
         String productname=request.getParameter("product");        
         String productprice=request.getParameter("price");         
         String manufacturer=request.getParameter("manufacturer");         
         String description=request.getParameter("description");
         String postuses=request.getParameter("postuses");
         Part part=request.getPart("image");
         
         String filename=extractFileName(part);
                    String savepath="C:\\Users\\Acer\\Documents\\NetBeansProjects\\I injection Toward effective collaborative filtering using uninteresting items\\web\\Gallery" +File.separator+filename;  
                      part.write(savepath +File.separator);
         try{
             Connection con=ConnectionProvider.getConnection();
              PreparedStatement pst=con.prepareStatement("insert into productpost values(?,?,?,AES_ENCRYPT(?,'12345'),?,?,?,?,?,?)");
              pst.setString(1,productname);
               pst.setString(2,productprice);
                pst.setString(3,manufacturer);
                pst.setString(4,description);
                pst.setString(5,postuses);
                pst.setString(6,filename);
                pst.setString(7,savepath);
                pst.setDate(8,getCurrentDate());
                pst.setString(9,rank);
                pst.setString(10,rating);
                int i=pst.executeUpdate();
                if(i>0){
                    response.sendRedirect("AddProductPost.jsp?msg=Product Posted Successfully");
                }
                else{
                    response.sendRedirect("AddProductPost.jsp?msg=Product Posted failed");
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

    