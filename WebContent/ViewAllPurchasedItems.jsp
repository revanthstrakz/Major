<%-- 
    Document   : ViewAllPurchasedItems
    Created on : Feb 7, 2018, 6:08:40 PM
    Author     : kishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>
<html>
<head>
    <title> 
      Purchased Items
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:auto;
            height:auto;
            border:1px solid black;
            margin-right:420px;
            border-radius:15px;
            float:right;
            margin-bottom: 100px;
            background-color:#00ffff;
           
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
            <h2><font color="green"> All Purchased Items</font></h2>
 <table border="1" style="margin-bottom:50px;">
     <tr><th>UserName</th><th>Product Name</th><th>Cost</th><th>Date</th></tr>
     <%@page import="java.sql.*"%>
     <%@page import="com.java.ConnectionProvider" %>  
     <%try{
         String Positive;
         Connection con=ConnectionProvider.getConnection();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from purchase");
         while(rs.next()){
             String username=rs.getString("username");
            
             String productname=rs.getString("productname");
     String cost=rs.getString("cost");
     String date=rs.getString("date");%>
     <tr><td><%=username%></td><td><%=productname%></td><td><%=cost%></td><td><%=date%></td></tr>
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




