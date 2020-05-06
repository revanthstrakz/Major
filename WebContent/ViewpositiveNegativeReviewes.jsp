<%-- 
    Document   : ViewpositiveNegativeReviewes
    Created on : Feb 7, 2018, 4:49:50 PM
    Author     : kishan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>
<html>
<head>
    <title>
       All Reviews
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:450px;
            height:auto;
            border:1px solid black;
            margin-right:380px;
            border-radius:15px;
            float:right;
          margin-bottom: 100px;
            background-color: #DAF7A6;
           
        }
        #login tr td {
            padding:10px;
            text-decoration: none;
        } 
        #login a{
            
            text-decoration: none;
        }
        #login a:hover:not(.active) {
    background-color: pink;
      }
      #review{
          width:450px;
            height:auto;
            border:1px solid black;
            margin-right:380px;
            border-radius:15px;
            float:right;
            margin-bottom: 100px;
            background-color:#FFF8DC;
      }
    </style>
</head>
<body>
<center><div id="main">
        
        <div id="header">
            
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font>

            
        </div>
        
           <ul>
               <li><a href="AdminHome.jsp"><h3>AdminHome</h3></a></li>
               <li><a href="Admin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            <h2><font color="green"> All Positive Review</font></h2>
 <table border="1" style="margin-bottom:50px;">
     <tr style="color: green"><th>Product Name</th><th>Manufacture</th><th>Review</th></tr>
     <%@page import="java.sql.*"%>
     <%@page import="com.java.ConnectionProvider" %>  
     <%try{
         String Positive;
         Connection con=ConnectionProvider.getConnection();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from review where opinion='Positive'");
         while(rs.next()){
             String productname=rs.getString("productname");
             String manufacture=rs.getString("manufacture");
             String review=rs.getString("review");%>
     <tr><td><%=productname%></td><td><%=manufacture%></td><td><textarea cols="10" rows="3"><%=review%></textarea></td></tr>
         <%}
     }catch(Exception e){
         out.println(e);
}%>
                    </table>
        </div>
                    <div id="review">
                    <h2><font color="red">All Negative Review</font></h2>
                    <table border="1" style="margin-bottom:50px;">
                        <tr style="color: red"><th>Product Name</th><th>Manufacture</th><th>Review</th></tr>
         <%try{
             String Negative;
         Connection con=ConnectionProvider.getConnection();
             Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from review where opinion='Negative'");
         while(rs.next()){
             String productname=rs.getString("productname");
             String manufacture=rs.getString("manufacture");
             String review=rs.getString("review");%>
                        <tr><td><%=productname%></td><td><%=manufacture%></td><td><textarea cols="10" rows="3"><%=review%></textarea></td></tr>
         <%}
     }catch(Exception e){
         out.println(e);
}%>
                    </table>
                    </div>
  
    </div>
</center>
</body>
</html>


